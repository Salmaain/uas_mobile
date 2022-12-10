import 'package:get/get.dart';
import 'package:uas_sister/models/university_model.dart';

class UniversityServices extends GetConnect{
  Future<List<UniversityListModel>?> getSemuaData() async{
    var response = await get("http://universities.hipolabs.com/search?country=Indonesia");
    print("======= INI ALL BODY ===========");
    print(response.body!.toString());
    
    List<UniversityListModel> data =  [UniversityListModel.fromJson(response.body[0])];
    print("======= INI DATA ===========");
    print(data[0].alphaTwoCode.toString());

    Future<List<UniversityListModel>?> datas = [data] as Future<List<UniversityListModel>?>; 
  
    return datas;

  }
}