import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payments/core/managers/stripe_keys.dart';
import 'package:payments/core/uitls/simple_observer.dart';
import 'package:payments/my_app.dart';

void main() {
  Stripe.publishableKey = StripeKeys.publishableKey;
  Bloc.observer = SimpleObserver();
  runApp(MyApp());
}
