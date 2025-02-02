import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:payments/stripe/data/model/payment_intent/payment_intent.dart';
import 'package:payments/stripe/domain/use_cases/create_payment_intent_use_case.dart';

part 'stripe_cubit.freezed.dart';
part 'stripe_state.dart';

class StripeCubit extends Cubit<StripeState> {
  final CreatePaymentIntentUseCase createPaymentIntentUseCase;
  StripeCubit(this.createPaymentIntentUseCase) : super(StripeState.initial());
  final amountTextController = TextEditingController();
  final currencyTextController = TextEditingController();

  Future<void> initPaymentSheet() async {
    try {
      emit(StripeState.loading());
      final PaymentIntentModel paymentIntent = await createPaymentIntent(
        amount: amountTextController.text,
        currency: currencyTextController.text,
      );
      final PaymentSheetPaymentOption? paymentOption =
          await Stripe.instance.initPaymentSheet(
        paymentSheetParameters: SetupPaymentSheetParameters(
          customFlow: false,
          // Main params
          merchantDisplayName: 'Flutter Stripe Store Demo',
          paymentIntentClientSecret: paymentIntent.clientSecret,
          style: ThemeMode.light,
        ),
      );
      emit(StripeState<PaymentSheetPaymentOption?>.success(paymentOption));
    } catch (e) {
      emit(StripeState.error(e.toString()));
    }
  }

  Future<PaymentIntentModel> createPaymentIntent({
    required String amount,
    required String currency,
  }) async {
    return await createPaymentIntentUseCase.execute(
      amount,
      currency,
    );
  }
}
