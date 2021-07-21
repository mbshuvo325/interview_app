import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/_helper/product_card.dart';
import 'package:interview_app/home/presentation/manager/home_page_controller.dart';

class FirstThreeProductWidgets extends StatelessWidget {
  const FirstThreeProductWidgets({
    Key? key,
    required this.controller,
    required this.size,
  }) : super(key: key);

  final HomePageController controller;
  final Size size;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Obx(() => controller.newProduct.value != null
          ? ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.firstThreeProduct.length,
              itemBuilder: (BuildContext context, int index) {
                var item = controller.firstThreeProduct[index];
                return productCard(item, size);
              },
            )
          : Center()),
    );
  }
}
