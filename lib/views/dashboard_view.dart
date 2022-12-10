import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:uas_sister/controllers/home_controller.dart';

class Dashboardview extends StatelessWidget {
  var controller = Get.put<HomeController>(HomeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        controller: controller.tabController,
        physics: NeverScrollableScrollPhysics(),
        children: controller.pages,
      ),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          currentIndex: controller.tabIndex.value,
          onTap: controller.changeTab,
          backgroundColor: Colors.grey.shade100,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Mahasiswa',
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.school),
                label: 'Kampus',
                backgroundColor: Colors.black),
          ],
        ),
      ),
    );
  }
}
