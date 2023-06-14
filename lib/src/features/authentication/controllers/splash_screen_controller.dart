import 'package:betheme/src/features/authentication/screens/on_boarding/on_boarding_screen.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';

class SplashScreenController extends GetxController{

static SplashScreenController get find => Get.find();

RxBool animate = false.obs;


  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
     animate.value = true ;
      
    await Future.delayed(Duration(milliseconds: 5000));
    Get.to(()=> OnBoardingScreen());
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeApp()));

  
  }

}

