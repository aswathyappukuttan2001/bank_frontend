// To parse this JSON data, do
//
//     final post = postFromJson(jsonString);

import 'dart:convert';

List<Post> postFromJson(String str) => List<Post>.from(json.decode(str).map((x) => Post.fromJson(x)));

String postToJson(List<Post> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Post {
  String id;
  String bank;
  String place;
  String branch;
  String managername;
  int v;

  Post({
    required this.id,
    required this.bank,
    required this.place,
    required this.branch,
    required this.managername,
    required this.v,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
    id: json["_id"],
    bank: json["bank"],
    place: json["place"],
    branch: json["branch"],
    managername: json["managername"],
    v: json["__v"],
  );

  Map<String, dynamic> toJson() => {
    "_id": id,
    "bank": bank,
    "place": place,
    "branch": branch,
    "managername": managername,
    "__v": v,
  };
}
