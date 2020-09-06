import 'package:flutter_getx/pages/domain/entity/cases_model.dart';

abstract class IHomeRepository {
  Future<CasesModel> getCases();
}