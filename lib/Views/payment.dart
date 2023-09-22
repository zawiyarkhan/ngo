// ignore_for_file: prefer_const_constructors, void_checks, avoid_print

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_stripe/flutter_stripe.dart';

class PaymentGateway extends StatefulWidget {
  const PaymentGateway({super.key});

  @override
  State<PaymentGateway> createState() => _PaymentGatewayState();
}

class _PaymentGatewayState extends State<PaymentGateway> {
  Map<String, dynamic>? paymentIntent;

  void makePayment() async {
    try {
      paymentIntent = await createPaymentIntent();

      var gPay = PaymentSheetGooglePay(
          merchantCountryCode: "US", currencyCode: "USD", testEnv: true);

      await Stripe.instance.initPaymentSheet(
          paymentSheetParameters: SetupPaymentSheetParameters(
              paymentIntentClientSecret: paymentIntent!["client_secret"],
              style: ThemeMode.dark,
              merchantDisplayName: "Ibrahim",
              googlePay: gPay));

      displayPaymentSheet();
    } catch (e) {
      print(e.toString());
    }
  }

  void displayPaymentSheet() async {
    try {
      await Stripe.instance.presentPaymentSheet();
      print("done");
    } catch (e) {
      print(e.toString());
    }
  }

  createPaymentIntent() async {
    try {
      Map<String, dynamic> body = {
        "amount": "1000",
        "currency": "USD",
      };

      http.Response response = await http.post(
          Uri.parse("https://api.stripe.com/v1/payment_intents"),
          body: body,
          headers: {
            "Authorization":
                "Bearer sk_test_51NdTFGAJrURjnUNVXav3KFDFabdWCKk41afzeZcLphDhgbtLhMsqisIUnlkmwB100yUUWSwUnKcY7Od5Y1gbDbQC00FN3dmIJb",
            "Content-Type": "application/x-www-form-urlencoded",
          });
      // print(response.body);
      return json.decode(response.body);
    } catch (e) {
      print(e.toString());
      throw Exception(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              makePayment();
            },
            child: Text("Pay Now")),
      ),
    );
  }
}
