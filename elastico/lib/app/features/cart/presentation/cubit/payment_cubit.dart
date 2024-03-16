import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:elastico/app/core/services/remote/payment_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'payment_state.dart';
part 'payment_cubit.freezed.dart';

class PaymentCubit extends Cubit<PaymentState> {
  final PaymentService _paymentService;

  late final StreamSubscription<(String, String)?> _deepLinkSubscription;

  PaymentCubit(this._paymentService) : super(const _Initial()) {
    _deepLinkSubscription = _paymentService.deepLinkData().listen((data) {
      final (status, authority) = data ?? ('', '');
      _verifyPayment(status, authority);
    });
  }

  void startPayment(double amount) {
    emit(const _Loading());
    _paymentService.startPayment(amount);
  }

  void _verifyPayment(
    String status,
    String authority,
  ) {
    _paymentService.verifyPayment(
      status,
      authority,
      (isPaymentSuccess, refID, paymentRequest) {
        isPaymentSuccess
            ? emit(const _Success())
            : emit(const _Error('خطا در پرداخت'));
      },
    );
  }

  @override
  Future<void> close() {
    _deepLinkSubscription.cancel();
    return super.close();
  }
}
