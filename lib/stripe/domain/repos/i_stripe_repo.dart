import 'package:payments/stripe/data/model/payment_intent/payment_intent.dart';

abstract class IStripeRepo {
  Future<PaymentIntentModel> createPaymentIntent(
    String amount,
    String currency,
  );
}
