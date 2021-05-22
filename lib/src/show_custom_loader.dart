import 'package:flutter/material.dart';
import 'package:flutter_loading_kit/src/set_custom_loader.dart';

import 'custom_loader_widget.dart';


class AnimatedLoader{

  final BuildContext context;
  final double height;
  final double width;
  bool isDismissible;
  bool isPopped = false;

  static const String TOASTER_DIALOG = 'assets/toster.json';
  static const String BASKETBALL = 'assets/basket_ball.json';
  static const String PLANE = 'assets/plane.json';
  static const String LIQUID_BUBBLE = 'assets/liquid_bubble.json';
  static const String ROBOT_WAIT = 'assets/loading_robot.json';
  static const String ROBOT_HELLO = 'assets/robot_hello.json';
  static const String PAYMENT_CARD = 'assets/payment_card.json';
  static const String CHARGER = 'assets/charging_indicator.json';
  // static const String LAUNCH_ROCKET = 'assets/launch_rocket.json';
  // static const String ORANGE_EMOJI = 'assets/orange_emoji.json';

  AnimatedLoader({ this.isDismissible = true, required this.context, this.height = 100.0, this.width = 100.0});

  void showDialog(String assets){
    SetCustomLoader customDialog = new SetCustomLoader(
        context: context,
        customAlertDialog: CustomLoaderWidget(
          assets:assets,
          height: height,
          width: width,
          onTap: isDismissible ? (){isPopped = true;Navigator.of(context).pop();}:(){},
        )
    );
    customDialog.setDialog();
  }

  void removeDialog(){

    if(isPopped){
    }else{
      Navigator.of(context).pop();
    }

  }
}