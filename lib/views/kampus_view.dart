import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_sister/controllers/mahasiswa_controller.dart';

class KampusView extends StatelessWidget {
  var controller = Get.put<MahasiswaController>(MahasiswaController());

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Obx(() => controller.isLoading.value == true
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: controller.listMahasiswa!.data!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(controller.listMahasiswa!.data![index].nama!),
                      subtitle:
                          Text(controller.listMahasiswa!.data![index].email!),
                      trailing:
                          Text(controller.listMahasiswa!.data![index].phone!),
                    ),
                  );
                },
              )));
  }
}
