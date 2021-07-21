import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/_helper/item_header.dart';
import 'package:interview_app/home/presentation/manager/home_page_controller.dart';
import 'package:interview_app/home/presentation/widgets/first_three_product_widgets.dart';
import 'package:interview_app/home/presentation/widgets/new_arrival_widgets.dart';
import 'package:interview_app/home/presentation/widgets/new_shop_widgets.dart';
import 'package:interview_app/home/presentation/widgets/rest_of_product_widgets.dart';
import 'package:interview_app/home/presentation/widgets/second_three_product_widgets.dart';
import 'package:interview_app/home/presentation/widgets/trending_product_widgets.dart';
import 'package:interview_app/home/presentation/widgets/trending_seller_widgets.dart';

class HomePage extends GetResponsiveView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              itemHeader(title: "Trending Seller"),
              SizedBox(
                height: size.height * 0.3,
                child: TrendingSeller(
                  controller: controller,
                ),
              ),
              itemHeader(title: 'Trending Product'),
              SizedBox(
                height: size.height * 0.3,
                child: TrendingProduct(
                  controller: controller,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              FirstThreeProductWidgets(controller: controller, size: size),
              itemHeader(title: "New Arrival"),
              SizedBox(
                height: size.height * 0.3,
                child: NewArrival(
                  controller: controller,
                ),
              ),
              SecondThreeProductWidgets(controller: controller, size: size),
              SizedBox(
                height: size.height * 0.3,
                child: NewShop(
                  controller: controller,
                ),
              ),
              RestOfProductWidgets(controller: controller, size: size),
            ],
          ),
        ),
      ),
    );
  }
}
