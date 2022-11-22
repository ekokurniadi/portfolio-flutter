import 'package:ekokurniadi/features/portfolio/data/models/portfolio_model.codegen.dart';
import 'package:ekokurniadi/features/portfolio/domain/entity/portfolio_entity.codegen.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Portfolio model', () {
    test('must return list of portfolio entity', () {
      final listPortfolioModel = List<PortfolioModel>.from([
        PortfolioModel(
          id: 1,
          imageCover: '',
          phil: '',
          title: '',
          description: '',
        ),
        PortfolioModel(
          id: 2,
          imageCover: '',
          phil: '',
          title: '',
          description: '',
        ),
        PortfolioModel(
          id: 3,
          imageCover: '',
          phil: '',
          title: '',
          description: '',
        ),
      ]);
      expect(listPortfolioModel.toListEntity(), isA<List<PortfolioEntity>>());
    });
  });
}
