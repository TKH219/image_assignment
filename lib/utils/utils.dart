import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void showToastMessage(String message, {ToastGravity gravity = ToastGravity.CENTER}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    gravity: gravity,
    timeInSecForIosWeb: 2,
    backgroundColor: Colors.white,
    textColor: Colors.black,
    fontSize: 16,
  );
}
