import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:payments/stripe/data/repos/stripe_repo_impl.dart';
import 'package:payments/stripe/di/stripe_di.dart';
import 'package:payments/stripe/presentation/manager/stripe_cubit.dart';
import 'package:payments/stripe/presentation/pages/stripe_payment_page.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Payments Demo'),
      ),
      body: Column(
        children: [
          IconButton(
            onPressed: () {
              StripeDi().init();
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => RepositoryProvider(
                    create: (context) => GetIt.I<StripeRepoImpl>(),
                    child: BlocProvider(
                      create: (context) => GetIt.I<StripeCubit>(),
                      child: const StripePaymentPage(),
                    ),
                  ),
                ),
              );
            },
            icon: Icon(Icons.payment_outlined),
          )
        ],
      ),
    );
  }
}
