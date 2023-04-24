import 'package:booking_system_flutter/model/pagination_model.dart';

class VideoResponse {
  List<VideoData>? VideoList;
  Pagination? pagination;

  VideoResponse({this.VideoList, this.pagination});

  factory VideoResponse.fromJson(Map<String, dynamic> json) {
    return VideoResponse(
      VideoList: json['data'] != null ? (json['data'] as List).map((i) => VideoData.fromJson(i)).toList() : null,
      pagination: json['pagination'] != null ? Pagination.fromJson(json['pagination']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.VideoList != null) {
      data['data'] = this.VideoList!.map((v) => v.toJson()).toList();
    }
    if (this.pagination != null) {
      data['pagination'] = this.pagination!.toJson();
    }
    return data;
  }
}

class VideoData {
  String? name;
  String? duration;
  String? description;
  int? id;
  int? catVideo_id;
  int? isFeatured;
  int? status;

  VideoData({this.name, this.duration, this.description, this.id, this.catVideo_id, this.isFeatured, this.status});

  factory VideoData.fromJson(Map<String, dynamic> json) {
    return VideoData(
      name: json['name'],
      duration: json['duration'],
      description: json['description'],
      id: json['id'],
      catVideo_id: json['catVideo_id'],
      isFeatured: json['is_featured'],
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['duration'] = this.duration;
    data['description'] = this.description;
    data['id'] = this.id;
    data['catVideo_id'] = this.catVideo_id;
    data['is_featured'] = this.isFeatured;
    data['status'] = this.status;
    return data;
  }
}
