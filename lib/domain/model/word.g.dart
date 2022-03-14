// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'word.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Word _$$_WordFromJson(Map<String, dynamic> json) => _$_Word(
      supNo: int.parse(json['sup_no']),
      word: json['word'] as String,
      targetCode: int.parse(json['target_code']),
      sense: Sense.fromJson(json['sense'] as Map<String, dynamic>),
      pos: json['pos'] as String,
    );

Map<String, dynamic> _$$_WordToJson(_$_Word instance) => <String, dynamic>{
      'sup_no': instance.supNo,
      'word': instance.word,
      'target_code': instance.targetCode,
      'sense': instance.sense,
      'pos': instance.pos,
    };
