// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'word.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Word _$WordFromJson(Map<String, dynamic> json) {
  return _Word.fromJson(json);
}

/// @nodoc
class _$WordTearOff {
  const _$WordTearOff();

  _Word call(
      {@JsonKey(name: 'sup_no') required int supNo,
      required String word,
      @JsonKey(name: 'target_code') required int targetCode,
      required Sense sense,
      required String pos}) {
    return _Word(
      supNo: supNo,
      word: word,
      targetCode: targetCode,
      sense: sense,
      pos: pos,
    );
  }

  Word fromJson(Map<String, Object?> json) {
    return Word.fromJson(json);
  }
}

/// @nodoc
const $Word = _$WordTearOff();

/// @nodoc
mixin _$Word {
  @JsonKey(name: 'sup_no')
  int get supNo => throw _privateConstructorUsedError;
  String get word => throw _privateConstructorUsedError;
  @JsonKey(name: 'target_code')
  int get targetCode => throw _privateConstructorUsedError;
  Sense get sense => throw _privateConstructorUsedError;
  String get pos => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WordCopyWith<Word> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WordCopyWith<$Res> {
  factory $WordCopyWith(Word value, $Res Function(Word) then) =
      _$WordCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'sup_no') int supNo,
      String word,
      @JsonKey(name: 'target_code') int targetCode,
      Sense sense,
      String pos});
}

/// @nodoc
class _$WordCopyWithImpl<$Res> implements $WordCopyWith<$Res> {
  _$WordCopyWithImpl(this._value, this._then);

  final Word _value;
  // ignore: unused_field
  final $Res Function(Word) _then;

  @override
  $Res call({
    Object? supNo = freezed,
    Object? word = freezed,
    Object? targetCode = freezed,
    Object? sense = freezed,
    Object? pos = freezed,
  }) {
    return _then(_value.copyWith(
      supNo: supNo == freezed
          ? _value.supNo
          : supNo // ignore: cast_nullable_to_non_nullable
              as int,
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      targetCode: targetCode == freezed
          ? _value.targetCode
          : targetCode // ignore: cast_nullable_to_non_nullable
              as int,
      sense: sense == freezed
          ? _value.sense
          : sense // ignore: cast_nullable_to_non_nullable
              as Sense,
      pos: pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$WordCopyWith<$Res> implements $WordCopyWith<$Res> {
  factory _$WordCopyWith(_Word value, $Res Function(_Word) then) =
      __$WordCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'sup_no') int supNo,
      String word,
      @JsonKey(name: 'target_code') int targetCode,
      Sense sense,
      String pos});
}

/// @nodoc
class __$WordCopyWithImpl<$Res> extends _$WordCopyWithImpl<$Res>
    implements _$WordCopyWith<$Res> {
  __$WordCopyWithImpl(_Word _value, $Res Function(_Word) _then)
      : super(_value, (v) => _then(v as _Word));

  @override
  _Word get _value => super._value as _Word;

  @override
  $Res call({
    Object? supNo = freezed,
    Object? word = freezed,
    Object? targetCode = freezed,
    Object? sense = freezed,
    Object? pos = freezed,
  }) {
    return _then(_Word(
      supNo: supNo == freezed
          ? _value.supNo
          : supNo // ignore: cast_nullable_to_non_nullable
              as int,
      word: word == freezed
          ? _value.word
          : word // ignore: cast_nullable_to_non_nullable
              as String,
      targetCode: targetCode == freezed
          ? _value.targetCode
          : targetCode // ignore: cast_nullable_to_non_nullable
              as int,
      sense: sense == freezed
          ? _value.sense
          : sense // ignore: cast_nullable_to_non_nullable
              as Sense,
      pos: pos == freezed
          ? _value.pos
          : pos // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Word implements _Word {
  const _$_Word(
      {@JsonKey(name: 'sup_no') required this.supNo,
      required this.word,
      @JsonKey(name: 'target_code') required this.targetCode,
      required this.sense,
      required this.pos});

  factory _$_Word.fromJson(Map<String, dynamic> json) => _$$_WordFromJson(json);

  @override
  @JsonKey(name: 'sup_no')
  final int supNo;
  @override
  final String word;
  @override
  @JsonKey(name: 'target_code')
  final int targetCode;
  @override
  final Sense sense;
  @override
  final String pos;

  @override
  String toString() {
    return 'Word(supNo: $supNo, word: $word, targetCode: $targetCode, sense: $sense, pos: $pos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Word &&
            const DeepCollectionEquality().equals(other.supNo, supNo) &&
            const DeepCollectionEquality().equals(other.word, word) &&
            const DeepCollectionEquality()
                .equals(other.targetCode, targetCode) &&
            const DeepCollectionEquality().equals(other.sense, sense) &&
            const DeepCollectionEquality().equals(other.pos, pos));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(supNo),
      const DeepCollectionEquality().hash(word),
      const DeepCollectionEquality().hash(targetCode),
      const DeepCollectionEquality().hash(sense),
      const DeepCollectionEquality().hash(pos));

  @JsonKey(ignore: true)
  @override
  _$WordCopyWith<_Word> get copyWith =>
      __$WordCopyWithImpl<_Word>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WordToJson(this);
  }
}

abstract class _Word implements Word {
  const factory _Word(
      {@JsonKey(name: 'sup_no') required int supNo,
      required String word,
      @JsonKey(name: 'target_code') required int targetCode,
      required Sense sense,
      required String pos}) = _$_Word;

  factory _Word.fromJson(Map<String, dynamic> json) = _$_Word.fromJson;

  @override
  @JsonKey(name: 'sup_no')
  int get supNo;
  @override
  String get word;
  @override
  @JsonKey(name: 'target_code')
  int get targetCode;
  @override
  Sense get sense;
  @override
  String get pos;
  @override
  @JsonKey(ignore: true)
  _$WordCopyWith<_Word> get copyWith => throw _privateConstructorUsedError;
}
