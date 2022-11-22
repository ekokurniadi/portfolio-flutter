import 'package:ekokurniadi/features/portfolio/data/datasources/portfolio_remote_datasource.dart';
import 'package:ekokurniadi/features/portfolio/domain/entity/portfolio_entity.codegen.dart';
import 'package:ekokurniadi/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ekokurniadi/features/portfolio/domain/repositories/portfolio_repository.dart';

class PortfolioRepositoryImpl implements PortfolioRepository{
  const PortfolioRepositoryImpl(this._portfolioRemoteDataSource);
  final PortfolioRemoteDataSource _portfolioRemoteDataSource;
  @override
  Future<Either<Failure, List<PortfolioEntity>>> getData() async{
    return await _portfolioRemoteDataSource.getData();
  }

}