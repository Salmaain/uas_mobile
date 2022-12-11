import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_sister/controllers/mahasiswa_controller.dart';
import 'package:url_launcher/url_launcher.dart';

class KampusView extends StatelessWidget {
  var controller = Get.put<MahasiswaController>(MahasiswaController());

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Obx(() => controller.isLoading.value == true
            ? Center(child: CircularProgressIndicator())
            : ListView.builder(
                itemCount: controller.datas!.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(controller.datas![index].name!),
                      subtitle:
                          Text(controller.datas![index].domains![0].toString()),
                      trailing: TextButton(
                          onPressed: () async {
                            var url = Uri.parse(controller
                                .datas![index].webPages![0]
                                .toString());
                            if (!await launchUrl(url)) {
                              throw 'Could not launch $url';
                            }
                          },
                          child: Text("Open Website")),
                    ),
                  );
                },
              )));
  }
}
