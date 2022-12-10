class UniversityResponseModel{
  List<UniversityListModel>? data;

  UniversityResponseModel({required this.data});

  UniversityResponseModel.fromJson(Map<String, dynamic> json) {
  //  data = json.cast<UniversityListModel>();
  }
}

class UniversityListModel {
  String? alphaTwoCode;
  String? name;
  String? country;
  List<String>? webPages;
  Null? stateProvince;
  List<String>? domains;

  UniversityListModel(
      {this.alphaTwoCode,
      this.name,
      this.country,
      this.webPages,
      this.stateProvince,
      this.domains});

  UniversityListModel.fromJson(Map<String, dynamic> json) {
    alphaTwoCode = json['alpha_two_code'];
    name = json['name'];
    country = json['country'];
    webPages = json['web_pages'].cast<String>();
    stateProvince = json['state-province'];
    domains = json['domains'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['alpha_two_code'] = this.alphaTwoCode;
    data['name'] = this.name;
    data['country'] = this.country;
    data['web_pages'] = this.webPages;
    data['state-province'] = this.stateProvince;
    data['domains'] = this.domains;
    return data;
  }
}