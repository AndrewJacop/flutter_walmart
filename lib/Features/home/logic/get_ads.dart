import 'package:flutter_walmart/Features/home/data/model/ads_model.dart';
import 'package:flutter_walmart/Features/home/data/reop/ads_repo.dart';
import 'package:flutter_walmart/Features/home/data/reop/ads_repo_impl.dart';
import 'package:flutter_walmart/core/utils/api_sevice.dart';
import 'package:get/get.dart';

class AdsController extends GetxController {
  late AdsRepo adsRepo; // Instantiate your repository

  final adsList = <AdsModel>[].obs; // Observable list to hold ads data

  @override
  void onInit() {
    super.onInit();
    adsRepo = AdsImpl(ApiService());
    fetchAds(); // Fetch ads data when controller initializes
  }

  void fetchAds() async {
    // Fetch ads data from repository
    final result = await adsRepo.adslunch();

    result.fold(
      (failure) => Get.snackbar('Error', failure.toString()),
      (ads) => adsList.assignAll(ads), // Assign fetched data to adsList
    );
  }
}
