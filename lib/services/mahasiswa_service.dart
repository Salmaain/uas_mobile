 import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:uas_sister/models/mahasiswa_model.dart';

class MahasiswaService extends GetConnect{
  final String getAllIdentiasUrl = "http://192.168.50.203:5000/api/identitas";


  Future<MahasiswaModel> getSemuaData () async{
    var response = await get(getAllIdentiasUrl);
    print(response.body);
    MahasiswaModel model = MahasiswaModel.fromJson(response.body);
    return model;
  }
}