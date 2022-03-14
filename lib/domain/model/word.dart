import 'package:freezed_annotation/freezed_annotation.dart';

part 'word.freezed.dart';
part 'word.g.dart';

@freezed
class Word with _$Word {
  const factory Word({
    @JsonKey(name: 'sup_no') required int supNo,
    required String word,
    @JsonKey(name: 'target_code') required int targetCode,
    required Sense sense,
    required String pos,
  }) = _Word;

  factory Word.fromJson(Map<String, dynamic> json) => _$WordFromJson(json);
}

class Sense {
  final String definition;
  final String link;
  final String type;

  Sense({
    required this.definition,
    required this.link,
    required this.type,
  });

  factory Sense.fromJson(Map<String, dynamic> json) {
    return Sense(
      definition: json['definition'] as String,
      link: json['link'],
      type: json['type'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'definition': definition,
      'link': link,
      'type': type,
    };
  }
}
