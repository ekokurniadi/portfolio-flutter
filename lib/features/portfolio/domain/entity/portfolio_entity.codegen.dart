import 'package:freezed_annotation/freezed_annotation.dart';

part 'portfolio_entity.codegen.freezed.dart';

@freezed
class PortfolioEntity with _$PortfolioEntity{
  factory PortfolioEntity({
    required int id,
    required String imageCover,
    required String phil,
    required String title,
    required String description,
  }) = _PortfolioEntity;
}