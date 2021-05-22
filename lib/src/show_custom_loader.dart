import 'package:flutter/cupertino.dart';
import 'package:flutter_loading_kit/src/set_custom_loader.dart';

import 'custom_loader_widget.dart';


class AnimatedLoader{

  final BuildContext context;
  final height;
  final width;
  bool isDismissable = true;
  bool isPoped = false;

  static final String toasterDialog = 'assets/toster.json';
  static final String basketBall = 'assets/basket_ball.json';
  static final String plane = 'assets/plane.json';
  static final String liquidBubble = 'assets/liquid_bubble.json';
  static final String loadingRobot = 'assets/loading_robot.json';
  static final String robotHello = 'assets/robot_hello.json';
  static final String paymentCard = 'assets/payment_card.json';
  static final String chargingIndicator = 'assets/charging_indicator.json';
  static final String launchRocket = 'assets/launch_rocket.json';
  static final String orangeEmoji = 'assets/orange_emoji.json';

  AnimatedLoader({this.isDismissable,this.context,this.height,this.width});

  void showDialog(String assets){
    SetCustomLoader customDialog = new SetCustomLoader(
        context: context,
        customAlertDialog: CustomLoaderWidget(
          assets:assets,
          height: height,
          width: width,
          onTap: isDismissable == null || isDismissable ? (){isPoped = true;Navigator.of(context).pop();}:(){},
        )
    );
    customDialog.setDialog();
  }

  void removeDialog(){

    if(isPoped){
    }else{
      Navigator.of(context).pop();
    }

  }
}