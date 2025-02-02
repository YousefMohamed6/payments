import 'package:dio/dio.dart';
import 'package:payments/stripe/queries/stripe_queries.dart';

class StripeApi {
  static Dio _init() {
    final Dio dio = Dio();
    dio.options.baseUrl = 'https://api.stripe.com/v1';
    dio.options.headers = {'Content-Type': 'application/json'};
    return dio;
  }

  static Future<Map<String, dynamic>> createPaymentIntent(
      String amount, String currency) async {
    final Dio dio = _init();
    final String url = StripeQueries.paymentIntents;
    final Map<String, dynamic> data = {
      'amount': amount,
      'currency': currency,
    };
    final response = await dio.post(url, data: data);
    return response.data;
  }
}
