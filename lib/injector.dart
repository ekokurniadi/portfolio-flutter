import 'package:ekokurniadi/core/helper/dio_helper.dart';
import 'package:ekokurniadi/features/portfolio/data/datasources/portfolio_remote_datasource.dart';
import 'package:ekokurniadi/features/portfolio/data/datasources/portfolio_remote_datasource_impl.dart';
import 'package:ekokurniadi/features/portfolio/data/repositories/portfolio_repository_impl.dart';
import 'package:ekokurniadi/features/portfolio/domain/repositories/portfolio_repository.dart';
import 'package:ekokurniadi/features/portfolio/domain/usecases/get_portfolios.dart';
import 'package:ekokurniadi/features/portfolio/presentations/cubit/portfolio_cubit.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton<PortfolioRemoteDataSource>(
    () => PortfolioRemoteDataSourceImpl(DioHelper.dio!),
  );

  sl.registerLazySingleton<PortfolioRepository>(
    () => PortfolioRepositoryImpl(sl()),
  );

  sl.registerLazySingleton<GetPortfoliosUseCases>(
    () => GetPortfoliosUseCases(sl()),
  );

  sl.registerFactory(() => PortfolioCubit(sl()));
}
