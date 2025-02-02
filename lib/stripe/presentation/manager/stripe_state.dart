part of 'stripe_cubit.dart';

@freezed
class StripeState<T> with _$StripeState {
  factory StripeState.initial() = Initial;
  factory StripeState.loading() = Loading;
  factory StripeState.success(T data) = Success;
  factory StripeState.error(String errorMessage) = Error;
}
