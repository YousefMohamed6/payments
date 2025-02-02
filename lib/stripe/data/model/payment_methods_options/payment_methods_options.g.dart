// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_methods_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodOptions _$PaymentMethodOptionsFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodOptions(
      card: Card.fromJson(json['card'] as Map<String, dynamic>),
      link: Link.fromJson(json['link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodOptionsToJson(
        PaymentMethodOptions instance) =>
    <String, dynamic>{
      'card': instance.card.toJson(),
      'link': instance.link.toJson(),
    };

Card _$CardFromJson(Map<String, dynamic> json) => Card(
      installments: json['installments'],
      mandateOptions: json['mandate_options'],
      network: json['network'],
      requestThreeDSecure: json['request_three_d_secure'] as String,
    );

Map<String, dynamic> _$CardToJson(Card instance) => <String, dynamic>{
      'installments': instance.installments,
      'mandate_options': instance.mandateOptions,
      'network': instance.network,
      'request_three_d_secure': instance.requestThreeDSecure,
    };

Link _$LinkFromJson(Map<String, dynamic> json) => Link(
      persistentToken: json['persistent_token'],
    );

Map<String, dynamic> _$LinkToJson(Link instance) => <String, dynamic>{
      'persistent_token': instance.persistentToken,
    };
