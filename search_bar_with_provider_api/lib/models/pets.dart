import 'dart:convert';

DataModel petsFromJson(String str) => DataModel.fromJson(json.decode(str));
String petsToJson(DataModel data) => json.encode(data.toJson());

class DataModel {
  late List<Data> data;

  DataModel({ required this.data});

  DataModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data.add(Data.fromJson(v));
      });
    }
  }
 
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
      data['data'] = this.data.map((v) => v.toJson()).toList();
    return data;
  }
}

class Data {
  late int id;
  late String userName;
  late String petName;
  late String petImage;
  late bool isFriendly;

  Data({
    required this.id, 
    required this.userName, 
    required this.petName, 
    required this.petImage, 
    required this.isFriendly
  });

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['userName'];
    petName = json['petName'];
    petImage = json['petImage'];
    isFriendly = json['isFriendly'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['userName'] = this.userName;
    data['petName'] = this.petName;
    data['petImage'] = this.petImage;
    data['isFriendly'] = this.isFriendly;
    return data;
  }
}
