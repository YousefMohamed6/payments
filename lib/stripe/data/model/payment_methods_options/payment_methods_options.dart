import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_methods_options.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentMethodOptions {
  Card card;
  Link link;

  PaymentMethodOptions({
    required this.card,
    required this.link,
  });

  factory PaymentMethodOptions.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentMethodOptionsToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Card {
  dynamic installments;
  @JsonKey(name: 'mandate_options')
  dynamic mandateOptions;
  dynamic network;
  @JsonKey(name: 'request_three_d_secure')
  String requestThreeDSecure;

  Card({
    this.installments,
    this.mandateOptions,
    this.network,
    required this.requestThreeDSecure,
  });

  factory Card.fromJson(Map<String, dynamic> json) => _$CardFromJson(json);
  Map<String, dynamic> toJson() => _$CardToJson(this);
}

@JsonSerializable(explicitToJson: true)
class Link {
  @JsonKey(name: 'persistent_token')
  dynamic persistentToken;
  Link({
    this.persistentToken,
  });
  factory Link.fromJson(Map<String, dynamic> json) => _$LinkFromJson(json);
  Map<String, dynamic> toJson() => _$LinkToJson(this);
}
