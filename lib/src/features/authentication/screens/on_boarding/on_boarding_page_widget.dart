import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../models/model_on_boarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
   OnBoardingPageWidget({
    super.key,
    required this.model,
  });

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(tDefaultSize),
      color: model.bgColor,
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image(
            image: AssetImage(model.image),
            height: size.height * 0.4,),

         
          Column(
            children: [
              Text(tOnBoardingTitle1,style:  Theme.of(context).textTheme.displaySmall,),
              Text(tOnBoardingSubTitle1, style: Theme.of(context).textTheme.displaySmall,textAlign:TextAlign.center,),

            ],
          ),

           Text(
            model.counterText,
            style: Theme.of(context).textTheme.titleLarge,
            ),
          const SizedBox(height: 50,),

          
        ],
      ),
      );
  }}