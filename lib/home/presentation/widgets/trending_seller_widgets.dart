import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/_helper/seller_item.dart';
import 'package:interview_app/home/presentation/manager/home_page_controller.dart';

class TrendingSeller extends StatelessWidget {
  const TrendingSeller({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final HomePageController controller;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Obx(() => controller.trendingSeller.value != null
          ? ListView.builder(
              physics: ClampingScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.trendingSeller.value!.length,
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
                      itemCount: controller.trendingSeller.value![index].length,
                      itemBuilder: (BuildContext cxt, int i) {
                        var item = controller.trendingSeller.value![index][i];
                        return sellerItem(size, item);
                      }),
                );
              },
            )
          : Center(
              child: Container(
              child: CircularProgressIndicator(),
            ))),
    );
  }
}
