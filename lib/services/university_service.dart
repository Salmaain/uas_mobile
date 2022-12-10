import 'package:get/get.dart';
import 'package:uas_sister/models/university_model.dart';

class UniversityServices extends GetConnect {
  Future<List<UniversityListModel>?> getSemuaData() async {
    var response =
        await get("http://universities.hipolabs.com/search?country=Indonesia");
    print(response.body.toString());

    Future<List<UniversityListModel>?> datas =
        [response.body] as Future<List<UniversityListModel>?>;
    print(datas.toString());

    return datas;
  }
}
