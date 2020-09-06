import 'package:dio/dio.dart';
import 'package:flutter_getx/pages/domain/adapters/repository_adapter.dart';
import 'package:flutter_getx/pages/domain/entity/cases_model.dart';


class HomeRepository implements IHomeRepository {
  HomeRepository({this.dio});
  final Dio dio;

  @override
  Future<CasesModel> getCases() async {
    try {
      final response = await dio.get("https://api.covid19api.com/summary");
      return CasesModel.fromJson(response.data);
    } catch (e) {
      print(e.toString());
      return Future.error(e.toString());
    }
  }
}