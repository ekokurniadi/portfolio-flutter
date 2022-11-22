import 'package:bloc/bloc.dart';
import 'package:ekokurniadi/features/portfolio/data/models/portfolio_model.codegen.dart';
import 'package:ekokurniadi/features/portfolio/domain/entity/portfolio_entity.codegen.dart';
import 'package:ekokurniadi/features/portfolio/domain/usecases/get_portfolios.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_state.dart';
part 'portfolio_cubit.freezed.dart';

class PortfolioCubit extends Cubit<PortfolioState> {
  PortfolioCubit(this._getPortfoliosUseCases) : super(PortfolioState.initial());
  final GetPortfoliosUseCases _getPortfoliosUseCases;

  Future<void> getData() async {
    emit(state.copyWith(
      status: PortofolioStatus.loading
    ));
    final result = await _getPortfoliosUseCases();
    result.fold(
        (l) => emit(state.copyWith(
              errorMessage: l.errorMessage,
              status: PortofolioStatus.error,
            )),
        (r) => emit(state.copyWith(data: r, status: PortofolioStatus.success)));
  }
}
