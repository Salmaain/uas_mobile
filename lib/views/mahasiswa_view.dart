import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:uas_sister/controllers/home_controller.dart';

class MahasiswaView extends StatelessWidget {

  var controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Obx(() => controller.isLoading.value==true
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: controller.listMahasiswa!.data!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    title: Text(controller.listMahasiswa!.data![index].nama!),
                    subtitle: Text(controller.listMahasiswa!.data![index].email!),
                    trailing: Text(controller.listMahasiswa!.data![index].phone!),
                  ),
                );
              },
            )
    ));
  }
}