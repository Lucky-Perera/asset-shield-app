import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';

class ToastService {
  static void show(String message) {
    BotToast.showCustomText(
      duration: Duration(seconds: 3),
      onlyOne: true,
      toastBuilder: (_) => Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          decoration: BoxDecoration(
            color: Colors.grey[900],
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            message,
            textAlign: TextAlign.center,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
