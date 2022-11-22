import 'package:ekokurniadi/features/portfolio/domain/entity/portfolio_entity.codegen.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_model.codegen.freezed.dart';
part 'portfolio_model.codegen.g.dart';

@freezed
class PortfolioModel with _$PortfolioModel {
  factory PortfolioModel({
    required int id,
    required String imageCover,
    required String phil,
    required String title,
    required String description,
  }) = _PortfolioModel;

  factory PortfolioModel.fromJson(Map<String, dynamic> json) =>
      _$PortfolioModelFromJson(json);
}

extension PortfolioModelX on PortfolioModel {
  PortfolioEntity toEntity() => PortfolioEntity(
      id: id,
      imageCover: imageCover,
      phil: phil,
      title: title,
      description: description);
}

extension ListPortfolioModelx on List<PortfolioModel> {
  List<PortfolioEntity> toListEntity() => List<PortfolioEntity>.from(
        map((e) => e.toEntity()),
      );
}
