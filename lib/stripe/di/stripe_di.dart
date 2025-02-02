import 'package:get_it/get_it.dart';
import 'package:payments/core/extentions/get_it.dart';
import 'package:payments/stripe/data/repos/stripe_repo_impl.dart';
import 'package:payments/stripe/domain/use_cases/create_payment_intent_use_case.dart';
import 'package:payments/stripe/presentation/manager/stripe_cubit.dart';

class StripeDi {
  void init() {
    final sl = GetIt.instance;
    sl.registerFactorySafely<StripeRepoImpl>(
      () => StripeRepoImpl(),
    );
    sl.registerFactorySafely<CreatePaymentIntentUseCase>(
      () => CreatePaymentIntentUseCase(
        sl<StripeRepoImpl>(),
      ),
    );
    sl.registerFactorySafely<StripeCubit>(
      () => StripeCubit(
        sl<CreatePaymentIntentUseCase>(),
      ),
    );
  }
}
