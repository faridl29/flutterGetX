import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:appName/constants/canoncial_path.dart';
import 'package:appName/constants/error_message.dart';
import 'package:appName/widget/show_snackbar.dart';

vspace(double? size) {
  return SizedBox(
    height: size,
  );
}

hspace(double? size) {
  return SizedBox(
    width: size,
  );
}

showErrorMessage(BuildContext context, String msg) {
  if (msg == CustomErrorMessage.CODE_401) {
    prefs.erase();
    // EDIT ROUTES with RouteConstants.login
    /*Get.offNamedUntil(
      RouteConstants.example,
      (route) => false,
    );*/
  } else {
    showSnackbar(message: msg);
  }
}