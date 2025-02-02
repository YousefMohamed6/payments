import 'package:freezed_annotation/freezed_annotation.dart';

part 'amount_details.g.dart';

@JsonSerializable(explicitToJson: true)
class AmountDetails {
  Map<String, dynamic> tip;

  AmountDetails({
    required this.tip,
  });

  factory AmountDetails.fromJson(Map<String, dynamic> json) =>
      _$AmountDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$AmountDetailsToJson(this);
}
