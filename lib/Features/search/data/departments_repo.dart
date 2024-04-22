import 'package:flutter_walmart/Features/search/models/department_model.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class DepartmentRepository extends GetxController {
  static DepartmentRepository get instance => Get.find();

  final supabase = Supabase.instance.client;

  Future<List<DepartmentModel>> gettAllDepartments() async {
    try {
      final data = await supabase.from('departments').select();
      final list = data.map((e) => DepartmentModel.fromJson(e)).toList();
      return list;
    } catch (e) {
      throw "########## error: dep repo -> getalldep ###########";
    }
  }
}
