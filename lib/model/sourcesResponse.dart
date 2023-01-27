/// code : 200
/// status : "OK"

class SourcesResponse {
  int? code;
  String? status;
  List<Source>? data;

  SourcesResponse({
    this.code,
    this.status,
    this.data,
  });

  SourcesResponse.fromJson(dynamic json) {
    code = json['code'];
    status = json['status'];
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Source.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['status'] = status;
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// number : 1
/// name : "سُورَةُ ٱلْفَاتِحَةِ"
/// englishName : "Al-Faatiha"
/// englishNameTranslation : "The Opening"
/// numberOfAyahs : 7
/// revelationType : "Meccan"

class Source {
  int? number;
  String? name;
  String? englishName;
  String? englishNameTranslation;
  int? numberOfAyahs;
  String? revelationType;

  Source({
    this.number,
    this.name,
    this.englishName,
    this.englishNameTranslation,
    this.numberOfAyahs,
    this.revelationType,
  });

  Source.fromJson(dynamic json) {
    number = json['number'];
    name = json['name'];
    englishName = json['englishName'];
    englishNameTranslation = json['englishNameTranslation'];
    numberOfAyahs = json['numberOfAyahs'];
    revelationType = json['revelationType'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['number'] = number;
    map['name'] = name;
    map['englishName'] = englishName;
    map['englishNameTranslation'] = englishNameTranslation;
    map['numberOfAyahs'] = numberOfAyahs;
    map['revelationType'] = revelationType;
    return map;
  }
}
