import 'package:dartz/dartz.dart';
import 'package:ekokurniadi/core/error/failure.dart';
import 'package:ekokurniadi/features/portfolio/domain/entity/portfolio_entity.codegen.dart';
import 'package:ekokurniadi/features/portfolio/domain/repositories/portfolio_repository.dart';

class GetPortfoliosUseCases{
  const GetPortfoliosUseCases(this._portfolioRepository);
  final PortfolioRepository _portfolioRepository;

  Future<Either<Failure,List<PortfolioEntity>>>call()async{
    return await _portfolioRepository.getData();
  }
}