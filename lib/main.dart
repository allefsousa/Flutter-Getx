import 'package:flutter/material.dart';
import 'package:flutter_getx/routes/app_pages.dart';
import 'package:flutter_getx/shared/logger_utils.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      enableLog: true,
      logWriterCallback: Logger.write,
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      home: Container(),
    );
  }
}




