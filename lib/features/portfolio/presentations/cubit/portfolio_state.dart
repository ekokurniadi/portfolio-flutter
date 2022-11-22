part of 'portfolio_cubit.dart';

enum PortofolioStatus { initial, loading, success, error }

@freezed
class PortfolioState with _$PortfolioState {
  const factory PortfolioState({
    required List<PortfolioEntity> data,
    required PortofolioStatus status,
    required String errorMessage,
  }) = _PortfolioState;

  factory PortfolioState.initial() => const PortfolioState(
        data: [],
        errorMessage: '',
        status: PortofolioStatus.initial,
      );
}
