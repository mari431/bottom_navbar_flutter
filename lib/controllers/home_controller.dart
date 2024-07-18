
import 'package:get/get.dart';

class homeController extends GetxController{
  static homeController get to => Get.put(homeController());

  @override
  void onInit() {
    // TODO: implement onInit
    print('home controller init!');
    super.onInit();
  }

  var _homepageIsLoading = false.obs;

  get homepageIsLoading => _homepageIsLoading.value;

  set homepageIsLoading(value) {
    _homepageIsLoading.value = value;
  }

 Future<void> homestartfunc()async{
    print('hstart func');
    homepageIsLoading = true;
    await Future.delayed(Duration(seconds: 3));
    homepageIsLoading = false;
  }

}