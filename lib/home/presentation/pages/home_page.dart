import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/home/presentation/manager/home_page_controller.dart';

class HomePage extends GetResponsiveView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    controller.getAllTrandingSeller();
    return Scaffold();
  }
}
