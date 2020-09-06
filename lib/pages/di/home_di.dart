import 'package:dio/dio.dart';
import 'package:flutter_getx/pages/data/home_repository.dart';
import 'package:flutter_getx/pages/domain/adapters/repository_adapter.dart';
import 'package:flutter_getx/pages/presentation/controllers/home_controller.dart';
import 'package:get/get.dart';

class HomeDi extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Dio());
    Get.lazyPut<IHomeRepository>(() => HomeRepository(dio: Get.find()));
    Get.lazyPut(() => HomeController(homeRepository: Get.find()));
  }
}