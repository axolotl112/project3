import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtubeproject/controllers/cart_controller.dart';
import 'package:youtubeproject/data/repository/popular_product_repo.dart';
import 'package:youtubeproject/models/cart_model.dart';
import 'package:youtubeproject/utils/colors.dart';

import '../models/Products_model.dart';

import 'package:get/get.dart';

class PopularProduct extends GetxController {
  final PopularProductRepo popularProductRepo;
  PopularProduct({required this.popularProductRepo});

  late List<Product> _popularProductList = [];
  bool _isLoading = false;
  bool _isExit = false;
  //works with the add or remove button. after adding or removing it's set to zero again
  int _quantity = 0;

  int get quantity => _quantity <= 1 ? 0 : _quantity;

  List<Product> get popularProductList => _popularProductList;
  bool get isLoading => _isLoading;
  bool get isExist => _isExit;
  int get length => _popularProductList.length;

  Future<void> getPopularProductList(bool reload) async {
    if (_popularProductList == null || reload) {
      Response response = await popularProductRepo.getPopularProductList();
      if (response.statusCode == 200) {
        _popularProductList = [];
        _popularProductList
            .addAll(ProductModel.fromJson(response.body).products);
        //_popularPageSize = ProductModel.fromJson(response.body).totalSize;
        _isLoading = false;
        update();
      }
    } else {}
  }
}
