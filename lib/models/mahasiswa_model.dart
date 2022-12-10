

class MahasiswaModel {
  bool? success;
  List<Data>? data;

  MahasiswaModel({this.success, this.data});

  MahasiswaModel.fromJson(Map<String, dynamic> json) {
    success = json['success'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['success'] = this.success;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? id;
  String? nama;
  String? about;
  String? phone;
  String? email;
  String? alamat;

  Data({this.id, this.nama, this.about, this.phone, this.email, this.alamat});

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nama = json['nama'];
    about = json['about'];
    phone = json['phone'];
    email = json['email'];
    alamat = json['alamat'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['nama'] = this.nama;
    data['about'] = this.about;
    data['phone'] = this.phone;
    data['email'] = this.email;
    data['alamat'] = this.alamat;
    return data;
  }
}