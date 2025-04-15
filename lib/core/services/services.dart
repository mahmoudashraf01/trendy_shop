import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class TrensdyShopServices extends GetxService {
  late SharedPreferences sharedPreferences;

  Future<TrensdyShopServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

inialilService()async {
 await Get.putAsync(() => TrensdyShopServices().init());
}
