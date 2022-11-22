// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: implicit_dynamic_parameter

part of 'portfolio_model.codegen.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PortfolioModel _$$_PortfolioModelFromJson(Map<String, dynamic> json) =>
    _$_PortfolioModel(
      id: json['id'] as int,
      imageCover: json['image_cover'] as String,
      phil: json['phil'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$_PortfolioModelToJson(_$_PortfolioModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image_cover': instance.imageCover,
      'phil': instance.phil,
      'title': instance.title,
      'description': instance.description,
    };
