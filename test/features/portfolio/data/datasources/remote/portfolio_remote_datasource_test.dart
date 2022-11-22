import 'package:dio/dio.dart';
import 'package:ekokurniadi/core/error/failure.dart';
import 'package:ekokurniadi/core/helper/constant_helper.dart';
import 'package:ekokurniadi/features/portfolio/data/datasources/portfolio_remote_datasource.dart';
import 'package:ekokurniadi/features/portfolio/data/datasources/portfolio_remote_datasource_impl.dart';
import 'package:ekokurniadi/features/portfolio/domain/entity/portfolio_entity.codegen.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';
import 'package:ekokurniadi/core/shared/extensions/dartz_extension.dart';

void main() {
  late PortfolioRemoteDataSource systemUnderTest;
  late Dio dio;
  late DioAdapter dioAdapter;
  late Map<String, dynamic> payload;
  setUp(() {
    dio = Dio();
    dioAdapter = DioAdapter(dio: dio, matcher: const UrlRequestMatcher());
    dio.httpClientAdapter = dioAdapter;
    systemUnderTest = PortfolioRemoteDataSourceImpl(dio);
    payload = {
      "meta": {
        "message": "List of portfolio",
        "code": 200,
        "status": "success"
      },
      "data": [
        {
          "id": 1,
          "image_cover": "card1.jpg",
          "phil": "Flutter",
          "title": "Aplikasi Teknisi UP3 PLN Banten",
          "description": "Aplikasi Berbasis Android"
        }
      ]
    };
  });

  group('Portfolio Remote DataSource', () {
    group('getData', () {
      test('should return list of portfolio entity when succes', () async {
        dioAdapter.onGet(ConstantHelper.portfolioUrl, (server) {
          server.reply(
            200,
            payload,
          );
        });
        final result = await systemUnderTest.getData();
        final success = result.getRight();
        final failure = result.getLeft();
        expect(result.isRight(), isTrue);
        expect(failure, isNull);
        expect(success, isA<List<PortfolioEntity>>());
      });

      test('should return failure when data is null', () async {
        dioAdapter.onGet(ConstantHelper.portfolioUrl, (server) {
          server.reply(200, null);
        });
        final result = await systemUnderTest.getData();
        final failure = result.getLeft();
        expect(result.isLeft(), isTrue);
        expect(failure, isA<Failure>());
      });
    });
  });
}
