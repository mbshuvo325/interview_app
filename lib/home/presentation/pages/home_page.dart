import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/home/presentation/manager/home_page_controller.dart';

class HomePage extends GetResponsiveView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    controller.getAllTrendingSeller();
    return Scaffold(
      body: Obx(() => controller.trendingSeller.value != null
          ? ListView.builder(
              itemCount: controller.trendingSeller.value!.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  height: 500,
                  width: 300,
                  child: ListView.builder(
                      itemCount: controller.trendingSeller.value![index].length,
                      itemBuilder: (BuildContext cxt, int i) {
                        var item = controller.trendingSeller.value![index][i];
                        return Container(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("${item.ezShopName}"),
                          ),
                        );
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
