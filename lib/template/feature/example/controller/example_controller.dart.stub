import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' hide Response;
import 'package:appName/app/app.dart';
import 'package:appName/constants/canoncial_path.dart';
import 'package:appName/feature/example/argument/example_argument.dart';
import 'package:appName/feature/example/model/example_model.dart';
import 'package:appName/widget/show_snackbar.dart';

class ExampleController extends GetxController {
  var isLoading = true.obs;
  var isError = false.obs;
  var errMsg = "".obs;
  var exampleData = <ExampleModel>[].obs;
  ExampleArgument? exampleArgument;

  Dio dio = Dio();

  @override
  void onInit() {
    // TODO: implement onInit
    exampleArgument = Get.arguments;
    debugPrint("Example Argument => ${exampleArgument?.id}");
    // getExampleData();
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  /*Future<List<ExampleModel>> getExampleData() async {
    isLoading(true);
    try {
      final result = await myApiClient.getData(CanonicalPath.EXAMPLE);
      var dataJson = jsonDecode(result.toString());
      List<dynamic> data = (dataJson["data"] ?? []) as List<dynamic>;
      isLoading(false);
      isError(false);
      exampleData.value = data.map((e) => ExampleModel.fromMap(e)).toList();
      return exampleData;
    } catch (e) {
      isLoading(false);
      isError(true);
      errMsg(e.toString());
      showSnackbar(message: errMsg.value);
      throw Exception(e);
    }
  }*/
}