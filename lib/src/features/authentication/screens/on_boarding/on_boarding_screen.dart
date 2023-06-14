import 'package:betheme/src/constants/colors.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controllers/on_boarding_controller.dart';

class OnBoardingScreen extends StatelessWidget {
   OnBoardingScreen({super.key});


  @override
  Widget build(BuildContext context) {

    final obcontroller = OnBoardigController();
    return Scaffold(
      body: 
      //SafeArea
        Stack(
          alignment: Alignment.center,
          children: [
            LiquidSwipe(
              pages: obcontroller.pages,
              liquidController: obcontroller.controller,
              slideIconWidget: const Icon(Icons.arrow_back_ios_new_outlined),
              //enableSideReveal: true,
              onPageChangeCallback: obcontroller.onPageChangedCallback,
             ),
             
             Positioned(
              bottom: 60.0,
              child:
              OutlinedButton(
                onPressed:() => obcontroller.animateToNextSlide(),
                style: ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black26),
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  foregroundColor:Colors.white, 
                  ),
                child: Container(
                  padding: const EdgeInsets.all(20),
                  
                  decoration: 
                  const BoxDecoration(
                    color: tDarkColor,
                    shape: BoxShape.circle
                    ),
                  child: const Icon(Icons.arrow_forward_ios_outlined),
                ),
                 ),
             ),
             Positioned(
              top: 50.0,
              right: 20.0,
              child:
               TextButton(
                style: TextButton.styleFrom(
                foregroundColor: Colors.grey,
                ),
                onPressed: ()=>obcontroller.skip(),
                child: Text("Skip"),
                ),),

             /* We wrapped the Positioned in a widget obx because it will observe and update the ui.
                As obx requires a child, instead we gave it an empty function,()=>,.
             */
             
             Obx( 
               ()=> Positioned(
                bottom: 30,
                child: 
               AnimatedSmoothIndicator(
                activeIndex: obcontroller.currentPage.value,
                effect: const WormEffect(
                  activeDotColor: Color(0xff272727),
                  //dotHeight: 15
                ),
                count: 3,
                ),),
             ), 
            ],
          ),
          );            
   
  }

  
}


