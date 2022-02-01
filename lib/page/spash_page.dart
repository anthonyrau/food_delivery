import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_delivery_app/page/landingpage.dart';
import 'package:food_delivery_app/util/helper.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({ Key key }) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  Timer _timer; 

  @override
  void initState() {
    _timer = Timer(const Duration(milliseconds: 4000), () {
      Navigator.of(context).pushReplacementNamed(LandingPage.routeName);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child: Stack(
          children: [
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                Helper.getAssetName('splashIcon.png', 'virtual'),
                fit: BoxFit.fill,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                Helper.getAssetName('logo.png', 'virtual'),
              ),
            ),
          ],
        ),
      )
    );
  }
}