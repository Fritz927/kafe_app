import 'package:flutter/material.dart';

class NotificationService{
  static GlobalKey<ScaffoldMessengerState> messengerKey =
      GlobalKey<ScaffoldMessengerState>();

  static  showSnackbar(String messsage) {
    final snackBar = SnackBar(
        content: Text(
      messsage,
      style: const TextStyle(
          color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
    ));
    messengerKey.currentState?.showSnackBar(snackBar);
  }
}
