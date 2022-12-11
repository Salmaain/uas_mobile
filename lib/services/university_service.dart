import 'dart:convert';

import 'package:get/get.dart';
import 'package:uas_sister/models/university_model.dart';

class UniversityServices extends GetConnect {
  Future<List<UniversityListModel>?> getSemuaData() async {
    var response =
        await get("http://universities.hipolabs.com/search?country=Indonesia");

    List<dynamic> lists = response.body;

    List<UniversityListModel> datas =
        lists.map((e) => UniversityListModel.fromJson(e)).toList();

    return datas;
  }
}
