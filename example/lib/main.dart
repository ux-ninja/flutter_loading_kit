import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_loading_kit/flutter_loading_kit.dart';

void main() {
  runApp(testApp());
}

// ignore: camel_case_types
class testApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnimatedLoaderExample(),
    );
  }
}

class AnimatedLoaderExample extends StatefulWidget {
  @override
  _AnimatedLoaderExampleState createState() => _AnimatedLoaderExampleState();
}

class _AnimatedLoaderExampleState extends State<AnimatedLoaderExample> {
  var gifImageList = [
    AnimatedLoader.basketBall,
    AnimatedLoader.plane,
    AnimatedLoader.toasterDialog,
    AnimatedLoader.liquidBubble,
    AnimatedLoader.orangeEmoji,
    AnimatedLoader.chargingIndicator,
    AnimatedLoader.robotHello,
    AnimatedLoader.loadingRobot,
    AnimatedLoader.launchRocket,
    AnimatedLoader.paymentCard,
  ];

  List<String> animationName = [
    'Basket Ball',
    'Plane',
    'Toaster',
    'Liquid Bubble',
    'Orange Emoji',
    'Charging Indicator',
    'Robot Hello',
    'Loading Robot',
    'Launching Rocket',
    'Payment Card',
  ];

  @override
  Widget build(BuildContext context) {
    AnimatedLoader animatedLoader = new AnimatedLoader(
      context: context,
      height: 150.0,
      width: 150.0,
      isDismissable: true,
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Loading Bar'),
      ),
      body: ListView.builder(
          shrinkWrap: true,
          itemCount: gifImageList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                animatedLoader.showDialog(gifImageList[index]);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 70.0,
                    padding: EdgeInsets.only(right: 20, top: 5, bottom: 5),
                    decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Lottie.asset(
                          gifImageList[index],
                          package: 'flutter_loading_kit',
                          height: 70,
                          width: 70,
                        ),
                        Text(
                          animationName[index],
                          style: GoogleFonts.montserrat(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }),
    );
  }
}
