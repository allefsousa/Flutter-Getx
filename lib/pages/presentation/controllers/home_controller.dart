
import 'package:flutter_getx/pages/domain/adapters/repository_adapter.dart';
import 'package:flutter_getx/pages/domain/entity/cases_model.dart';
import 'package:get/get.dart';

enum Status { loading, success, error }

class HomeController extends GetxController {
  HomeController({this.homeRepository});

  final IHomeRepository homeRepository;

  /// create a reactive status from request with initial value = loading
  final status = Status.loading.obs;

  /// create a reactive CasesModel. CasesModel().obs has same result
  final cases = Rx<CasesModel>();


  @override
  void onInit() => fetchDataFromApi();

  Future<void> fetchDataFromApi(){
    /// When the repository returns the value, change the status to success, and fill in "cases"
    return homeRepository.getCases().then(
            (data) {
          cases(data);
          status(Status.success);
        },

        /// In case of error, print the error and change the status to Status.error
        onError: (err) {
      print("$err");
      return status(Status.error);

    });
  }


}