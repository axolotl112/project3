import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youtubeproject/controllers/popular_product_controllers.dart';
import 'package:youtubeproject/controllers/recommended_product_controller.dart';

import '../../routes/route_helper.dart';
import '../../utils/dimen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController _controller;

  Future<void> _loadResources() async {
    await Get.find<PopularController>().getPopularProductList();
    await Get.find<RecommendedProductController>()
        .getRecommendedProductListList();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _loadResources();
    _controller =
        new AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..forward();
    animation = new CurvedAnimation(parent: _controller, curve: Curves.linear);
    Timer(Duration(seconds: 3), () => Get.offNamed(RouteHelper.getInitial()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ScaleTransition(
              scale: animation,
              child: Center(
                  child: Image.asset(
                "assets/image/tree-736885_1280.jpg",
                width: Dimensions.splashImg,
              ))),
          Center(
              child: Image.asset(
            "assets/image/tree-736885_1280.jpg",
            width: Dimensions.splashImg,
          )),
        ],
      ),
    );
    ;
  }
}
