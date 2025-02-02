import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payments/stripe/data/model/amount_details/amount_details.dart';
import 'package:payments/stripe/data/model/automatic_payment_methods/automatic_payment_methods.dart';
import 'package:payments/stripe/data/model/payment_methods_options/payment_methods_options.dart';

part 'payment_intent.g.dart';

@JsonSerializable(explicitToJson: true)
class PaymentIntentModel {
  String id;
  String object;
  int amount;
  @JsonKey(name: 'amount_capturable')
  int amountCapturable;
  @JsonKey(name: 'amount_details')
  AmountDetails amountDetails;
  @JsonKey(name: 'amount_received')
  int amountReceived;
  dynamic application;
  @JsonKey(name: 'application_fee_amount')
  dynamic applicationFeeAmount;
  @JsonKey(name: 'automatic_payment_methods')
  AutomaticPaymentMethods automaticPaymentMethods;
  @JsonKey(name: 'canceled_at')
  dynamic canceledAt;
  @JsonKey(name: 'cancellation_reason')
  dynamic cancellationReason;
  @JsonKey(name: 'capture_method')
  String captureMethod;
  @JsonKey(name: 'client_secret')
  String clientSecret;
  @JsonKey(name: 'confirmation_method')
  String confirmationMethod;
  int created;
  String currency;
  dynamic customer;
  dynamic description;
  dynamic invoice;
  @JsonKey(name: 'last_payment_error')
  dynamic lastPaymentError;
  @JsonKey(name: 'latest_charge')
  dynamic latestCharge;
  bool livemode;
  Map<String, dynamic> metadata;
  @JsonKey(name: 'next_action')
  dynamic nextAction;
  @JsonKey(name: 'on_behalf_of')
  dynamic onBehalfOf;
  @JsonKey(name: 'payment_method')
  dynamic paymentMethod;
  @JsonKey(name: 'payment_method_options')
  PaymentMethodOptions paymentMethodOptions;
  List<String> paymentMethodTypes;
  dynamic processing;
  @JsonKey(name: 'receipt_email')
  dynamic receiptEmail;
  dynamic review;
  @JsonKey(name: 'setup_future_usage')
  dynamic setupFutureUsage;
  dynamic shipping;
  dynamic source;
  @JsonKey(name: 'statement_descriptor')
  dynamic statementDescriptor;
  @JsonKey(name: 'statement_descriptor_suffix')
  dynamic statementDescriptorSuffix;
  String status;
  @JsonKey(name: 'transfer_data')
  dynamic transferData;
  @JsonKey(name: 'transfer_group')
  dynamic transferGroup;

  PaymentIntentModel({
    required this.id,
    required this.object,
    required this.amount,
    required this.amountCapturable,
    required this.amountDetails,
    required this.amountReceived,
    this.application,
    this.applicationFeeAmount,
    required this.automaticPaymentMethods,
    this.canceledAt,
    this.cancellationReason,
    required this.captureMethod,
    required this.clientSecret,
    required this.confirmationMethod,
    required this.created,
    required this.currency,
    this.customer,
    this.description,
    this.invoice,
    this.lastPaymentError,
    this.latestCharge,
    required this.livemode,
    required this.metadata,
    this.nextAction,
    this.onBehalfOf,
    this.paymentMethod,
    required this.paymentMethodOptions,
    required this.paymentMethodTypes,
    this.processing,
    this.receiptEmail,
    this.review,
    this.setupFutureUsage,
    this.shipping,
    this.source,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    required this.status,
    this.transferData,
    this.transferGroup,
  });

  factory PaymentIntentModel.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentModelFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentIntentModelToJson(this);
}
