import 'package:dartz/dartz.dart';
import 'package:ekokurniadi/core/error/failure.dart';
import 'package:ekokurniadi/features/portfolio/domain/entity/portfolio_entity.codegen.dart';

abstract class PortfolioRemoteDataSource{
  Future<Either<Failure, List<PortfolioEntity>>>getData();
}