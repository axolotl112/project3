import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:youtubeproject/pages/cart/cart_page.dart';

import '../pages/home/main_food_page.dart';

class Catogries extends StatelessWidget {
  const Catogries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: GestureDetector(
                        onTap: () {
                          Get.to(() => CartPage());
                        },
                        child: const Image(
                          height: 35,
                          image:
                              AssetImage('assets/image/tree-736885_1280.jpg'),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Text('Test'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: const Image(
                        height: 35,
                        image: AssetImage('assets/image/tree-736885_1280.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Text('Test'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: const Image(
                        height: 35,
                        image: AssetImage('assets/image/tree-736885_1280.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Text('Test'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: const Image(
                        height: 35,
                        image: AssetImage('assets/image/tree-736885_1280.jpg'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Text('Test'),
              )
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 18, left: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      child: const Image(
                        height: 35,
                        image: AssetImage('assets/image/poke-2.png'),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 9),
                child: Text('Test'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
