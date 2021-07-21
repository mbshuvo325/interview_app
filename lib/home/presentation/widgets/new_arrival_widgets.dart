import 'package:cached_network_image/cached_network_image.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/_helper/new_arrival_item.dart';
import 'package:interview_app/_helper/trending_product_item.dart';
import 'package:interview_app/home/domain/entities/tranding_product_response.dart';
import 'package:interview_app/home/presentation/manager/home_page_controller.dart';

class NewArrival extends StatelessWidget {
  const NewArrival({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomePageController controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Obx(() => controller.newArrival.value != null
          ? ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.newArrival.value!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: size.height * 0.3,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(0, 4), // changes position of shadow
                      ),
                    ],
                  ),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: ClampingScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: controller.newArrival.value![index].length,
                      itemBuilder: (BuildContext cxt, int i) {
                        var item = controller.newArrival.value![index][i];
                        return newArrivalItem(size, item);
                      }),
                );
              },
            )
          : Center()),
    );
  }
}
