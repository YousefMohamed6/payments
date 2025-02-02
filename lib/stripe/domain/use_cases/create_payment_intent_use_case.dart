import 'package:payments/stripe/data/model/payment_intent/payment_intent.dart';
import 'package:payments/stripe/data/repos/stripe_repo_impl.dart';

class CreatePaymentIntentUseCase {
  final StripeRepoImpl _stripeRepository;

  CreatePaymentIntentUseCase(this._stripeRepository);

  Future<PaymentIntentModel> execute(String amount, String currency) {
    return _stripeRepository.createPaymentIntent(amount, currency);
  }
}
