import 'package:dio/dio.dart';
import 'package:ekokurniadi/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:ekokurniadi/core/helper/constant_helper.dart';
import 'package:ekokurniadi/core/helper/dio_helper.dart';
import 'package:ekokurniadi/features/portfolio/data/datasources/portfolio_remote_datasource.dart';
import 'package:ekokurniadi/features/portfolio/data/models/portfolio_model.codegen.dart';
import 'package:ekokurniadi/features/portfolio/domain/entity/portfolio_entity.codegen.dart';

class PortfolioRemoteDataSourceImpl implements PortfolioRemoteDataSource {
  const PortfolioRemoteDataSourceImpl(this._dio);
  final Dio _dio;
  @override
  Future<Either<Failure, List<PortfolioEntity>>> getData() async {
    try {
      final response = await _dio.get(ConstantHelper.portfolioUrl);
      final listModel = <PortfolioModel>[];
      for (var data in response.data['data']) {
        listModel.add(PortfolioModel.fromJson(data));
      }
      return right(listModel.toListEntity());
    } catch (e) {
      return left(ServerFailure(message: e.toString()));
    }
  }
}
