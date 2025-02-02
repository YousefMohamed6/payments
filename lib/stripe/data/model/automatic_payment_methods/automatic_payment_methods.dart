import 'package:freezed_annotation/freezed_annotation.dart';

part 'automatic_payment_methods.g.dart';

@JsonSerializable(explicitToJson: true)
class AutomaticPaymentMethods {
  bool enabled;
  AutomaticPaymentMethods({
    required this.enabled,
  });
  factory AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) =>
      _$AutomaticPaymentMethodsFromJson(json);
  Map<String, dynamic> toJson() => _$AutomaticPaymentMethodsToJson(this);
}
