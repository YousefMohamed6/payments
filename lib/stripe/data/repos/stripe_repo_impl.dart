import 'package:payments/stripe/data/model/payment_intent/payment_intent.dart';
import 'package:payments/stripe/domain/repos/i_stripe_repo.dart';
import 'package:payments/stripe/queries/stripe_api.dart';

class StripeRepoImpl implements IStripeRepo {
  @override
  Future<PaymentIntentModel> createPaymentIntent(
    String amount,
    String currency,
  ) async {
    final response = await StripeApi.createPaymentIntent(amount, currency);
    return PaymentIntentModel.fromJson(response);
  }
}
