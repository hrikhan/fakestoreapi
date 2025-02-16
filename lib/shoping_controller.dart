import 'dart:convert';

import 'package:api/product_model.dart';
import 'package:api/shoping_service.dart';
import 'package:flutter/foundation.dart';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ShopingController extends GetxController {
  late Homeservice homeservice;

  List<product> products = []; // List of products
  List<String> categories = []; // List of categories
  List<product> specificcatagories = []; // List of
  bool isloading = false;
  bool iscatagoriesfound = false;
  bool justcatagoriesfound = false;
  bool postloading =false;



  @override
  void onInit() {
    homeservice = Homeservice();
    getcategory();
    getproduct();

    super.onInit();
  }

  void getproduct() async {
    try {
      isloading = true;
      http.Response response = await homeservice.getproduct();

      if (response.statusCode == 200) {
        var productdata = jsonDecode(response.body);
        for (var i = 0; i < productdata.length; i++) {
          products.add(product.fromJson(productdata[i]));
        }


        isloading = false;

        print(products);
        update();
      }
    } catch (e) {
      print("data not found");
    }
  }

  void getcategory() async {

      iscatagoriesfound = true;

      http.Response response = await homeservice.getcategories();
      if (response.statusCode == 200) {
        var categoriesdata = jsonDecode(response.body);
        for (var i = 0; i < categoriesdata.length; i++) {
          categories.add(categoriesdata[i]);
          iscatagoriesfound=false;
          update();
        }
      }

  }

  void specification_catagories(String categories) async {

     justcatagoriesfound =true;
      specificcatagories.clear();
      http.Response response =
      await homeservice.specificationCategories(categories);
      if (response.statusCode == 200) {
        var catagoriesspefic = json.decode(response.body);
        for (var i = 0; i < catagoriesspefic.length; i++) {
          specificcatagories.add(product.fromJson(catagoriesspefic[i]));
          justcatagoriesfound = false;
          update();

      }
    }


      try{
        isloading=true;

      }

      }
      catch(e){

      }
}
