import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uas_sister/models/mahasiswa_model.dart';
import 'package:uas_sister/models/university_model.dart';
import 'package:uas_sister/services/mahasiswa_service.dart';
import 'package:uas_sister/services/university_service.dart';
import 'package:uas_sister/views/kampus_view.dart';
import 'package:uas_sister/views/mahasiswa_view.dart';

class MahasiswaController extends GetxController {
  UniversityServices? _universityServices;
  MahasiswaService? _mahasiswaService;
  List<UniversityListModel>? datas;
  RxBool isLoading = true.obs;
  MahasiswaModel? listMahasiswa;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();

    _universityServices = Get.put<UniversityServices>(UniversityServices());
    _mahasiswaService = Get.put<MahasiswaService>(MahasiswaService());
    fetchAllMahasiswa();
  }

  void fetchUniversitas() async {
    var response = await _universityServices!.getSemuaData();
    print(response.toString());
    datas = response;
  }

  void fetchAllMahasiswa() async {
    var response = await _mahasiswaService!.getSemuaData();
    print(response.toString());
    listMahasiswa = response;
    isLoading.value = false;
  }

  void fetchAll() async {
    fetchAllMahasiswa();
    // fetchUniversitas();
    isLoading.value = false;
  }
}
