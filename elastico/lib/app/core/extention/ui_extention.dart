import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';

extension UiExtention on BuildContext {
  void showToast({
    required String title,
    String? description,
    ToastificationType? type,
  }) {
    toastification.show(
      context: this,
      type: type,
      style: ToastificationStyle.flatColored,
      title: Text(title),
      description: description != null ? Text(description) : null,
      alignment: Alignment.topCenter,
      autoCloseDuration: const Duration(seconds: 4),
      borderRadius: BorderRadius.circular(12.0),
      boxShadow: lowModeShadow,
      showProgressBar: false,
      dragToClose: true,
    );
  }
}
