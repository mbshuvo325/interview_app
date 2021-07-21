import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/home/presentation/manager/home_page_controller.dart';
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Trending Seller',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: size.height * 0.25,
                child: TrendingSeller(
                  controller: controller,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
