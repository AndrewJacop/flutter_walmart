import 'package:get/get.dart';

class ProductcurController extends GetxController {
  static ProductcurController get instance => Get.find();
  final carousalCurrentIndex = 0.obs;
  void updatePageIndicator(int index) {
    carousalCurrentIndex.value = index;
  }
}
