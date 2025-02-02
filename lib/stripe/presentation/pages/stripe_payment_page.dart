import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments/core/widgets/custom_text_feild.dart';
import 'package:payments/stripe/presentation/manager/stripe_cubit.dart';

class StripePaymentPage extends StatelessWidget {
  const StripePaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    final StripeCubit cubit = context.read<StripeCubit>();
    return BlocListener<StripeCubit, StripeState>(
      listener: (context, state) {
        if (state is Error<String>) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
            ),
          );
        }
      },
      child: Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            CustomTextField(
              controller: cubit.amountTextController,
              lable: 'amount',
            ),
            SizedBox(height: 16),
            CustomTextField(
              controller: cubit.currencyTextController,
              lable: 'currency',
            ),
            SizedBox(height: 16),
            IconButton(
              onPressed: () async {
                await cubit.initPaymentSheet();
              },
              icon: Icon(Icons.money_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
