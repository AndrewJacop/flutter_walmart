import 'package:flutter_walmart/features/search/data/departments_repo.dart';
import 'package:flutter_walmart/features/search/models/department_model.dart';
import 'package:get/get.dart';

class DepartmentController extends GetxController {
  static DepartmentController get instance => Get.find();

  final _depRepo = Get.put(DepartmentRepository());

  RxList<DepartmentModel> departmentList = <DepartmentModel>[].obs;

  @override
  void onInit() {
    fetchDepartments();
    super.onInit();
  }

  Future<void> fetchDepartments() async {
    try {
      final data = await _depRepo.gettAllDepartments();
      departmentList.assignAll(data);
    } catch (e) {
      throw "########## error: dep ctrl -> fetchDep ###########";
    }
  }
}
