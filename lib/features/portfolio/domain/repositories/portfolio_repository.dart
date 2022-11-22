import 'package:dartz/dartz.dart';
import 'package:ekokurniadi/core/error/failure.dart';
import 'package:ekokurniadi/features/portfolio/data/models/portfolio_model.codegen.dart';
import 'package:ekokurniadi/features/portfolio/domain/entity/portfolio_entity.codegen.dart';

abstract class PortfolioRepository {
  Future<Either<Failure, List<PortfolioEntity>>> getData();
}
