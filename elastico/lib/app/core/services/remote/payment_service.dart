import 'dart:async';

import 'package:elastico/app/core/extention/string_extention.dart';
import 'package:injectable/injectable.dart';
import 'package:uni_links/uni_links.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:zarinpal/zarinpal.dart';

sealed class PaymentService {
  void startPayment(double amount);

  Stream<(String, String)?> deepLinkData();

  void verifyPayment(
    String status,
    String authority,
    FutureOr<void> Function(bool, String?, PaymentRequest) listener,
  );
}

@LazySingleton(as: PaymentService)
class ZarinpalPaymentService implements PaymentService {
  final PaymentRequest _paymentRequest;

  ZarinpalPaymentService(this._paymentRequest);

  void _setupPaymentRequest(double amount) {
    _paymentRequest
      ..setIsSandBox(true)
      ..setAmount(amount)
      ..setDescription('پرداخت تستی اپلیکیشن')
      ..setMerchantID('59250498-084d-4155-8c27-26f3be1638f2')
      ..setCallbackURL('elasticoapp://payment');
  }

  @override
  void startPayment(double amount) {
    _setupPaymentRequest(amount);
    ZarinPal().startPayment(_paymentRequest, (status, paymentGatewayUri) {
      if (status == 100 && paymentGatewayUri != null) {
        launchUrl(
          Uri.parse(paymentGatewayUri),
          mode: LaunchMode.externalApplication,
        );
      }
    });
  }

  @override
  Stream<(String, String)?> deepLinkData() => linkStream.map((deepLink) {
        if (deepLink != null && deepLink.toLowerCase().contains('authority')) {
          final authority = deepLink.extractValueFromQuery('Authority');
          final status = deepLink.extractValueFromQuery('Status');
          if (status != null && authority != null) {
            return (status, authority);
          }
        }
        return null;
      });

  @override
  void verifyPayment(
    String status,
    String authority,
    FutureOr<void> Function(bool, String?, PaymentRequest) listener,
  ) {
    ZarinPal().verificationPayment(
      status,
      authority,
      _paymentRequest,
      listener,
    );
  }
}
