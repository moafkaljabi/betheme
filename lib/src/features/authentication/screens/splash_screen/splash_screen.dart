import 'package:betheme/src/constants/colors.dart';
import 'package:betheme/src/constants/image_strings.dart';
import 'package:betheme/src/constants/sizes.dart';
import 'package:betheme/src/constants/text_strings.dart';
import 'package:betheme/src/features/authentication/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({super.key});

  
//SplashScreenController splashScreenController = SplashScreenController();
final splachController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
     splachController.startAnimation();
    return  Scaffold(
      body:  
          Stack(
            children:[
              Obx(()=> AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                     top: splachController.animate.value ? 0: -30, 
                    left: splachController.animate.value ? 0: -30 ,
                    child:const Image(image: AssetImage(tSplashTopIcon))),
              ),  

              Obx( () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: 80,
                  left: splachController.animate.value? tDefaultSize: -80,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),
                    opacity: splachController.animate.value? 1 : 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tAppName,
                          style: Theme.of(context).textTheme.displayMedium,),
                        Text(
                          tAppTagLine,
                          style:Theme.of(context).textTheme.displaySmall),
                  
                      ],),
                  )),
              ),
              Obx( () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 2400),
                  bottom: splachController.animate.value? 100 : 0 ,
                  left: 80,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 2000),
                    opacity: splachController.animate.value ? 1 : 0,
                    child: const Image(
                      image: AssetImage(tSplashImage),),
                  )),
              ),

              Obx( () => AnimatedPositioned(
                  duration: Duration(milliseconds: 2400),
                  
                  bottom: splachController.animate.value? 40 : 0,
                  right: tDefaultSize,
                  child: AnimatedOpacity(
                    duration: Duration(milliseconds: 2000),
                    opacity: splachController.animate.value ? 1 : 0,
                    child: Container(
                      width: tSplashContainerSize,
                      height: tSplashContainerSize,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100),
                      color: tPrimaryColor,
                      ),
                      
                    ),
                  )),
              )
            ] )
         );

    
  }
  

}