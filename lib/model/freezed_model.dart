import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_model.freezed.dart';

@freezed
class FreezedModel with _$FreezedModel {
  factory FreezedModel(String string) = _FreezedModel;
}
