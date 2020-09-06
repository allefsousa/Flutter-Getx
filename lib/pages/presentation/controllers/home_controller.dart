
import 'package:flutter_getx/pages/domain/adapters/repository_adapter.dart';
import 'package:get/get.dart';

enum Status { loading, success, error }

class HomeController extends GetxController {
  HomeController({this.homeRepository});

  final IHomeRepository homeRepository;


}