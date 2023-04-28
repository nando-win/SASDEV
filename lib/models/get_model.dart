// To parse this JSON data, do
//
//     final get = getFromJson(jsonString);

import 'dart:convert';

GetModel getFromJson(String str) => GetModel.fromJson(json.decode(str));

String getToJson(GetModel data) => json.encode(data.toJson());

class GetModel {
  bool success;
  Data data;
  String message;

  GetModel({
    required this.success,
    required this.data,
    required this.message,
  });

  factory GetModel.fromJson(Map<String, dynamic> json) => GetModel(
        success: json["success"],
        data: Data.fromJson(json["data"]),
        message: json["message"],
      );

  Map<String, dynamic> toJson() => {
        "success": success,
        "data": data.toJson(),
        "message": message,
      };
}

class Data {
  List<Entity> entities;
  Pagination pagination;

  Data({
    required this.entities,
    required this.pagination,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        entities:
            List<Entity>.from(json["entities"].map((x) => Entity.fromJson(x))),
        pagination: Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "entities": List<dynamic>.from(entities.map((x) => x.toJson())),
        "pagination": pagination.toJson(),
      };
}

class Entity {
  int id;
  String name;
  int active;
  int order;

  Entity({
    required this.id,
    required this.name,
    required this.active,
    required this.order,
  });

  factory Entity.fromJson(Map<String, dynamic> json) => Entity(
        id: json["id"],
        name: json["name"],
        active: json["active"],
        order: json["order"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "active": active,
        "order": order,
      };
}

class Pagination {
  int total;
  int count;
  int perPage;
  int currentPage;
  int totalPages;
  Links links;

  Pagination({
    required this.total,
    required this.count,
    required this.perPage,
    required this.currentPage,
    required this.totalPages,
    required this.links,
  });

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        total: json["total"],
        count: json["count"],
        perPage: json["per_page"],
        currentPage: json["current_page"],
        totalPages: json["total_pages"],
        links: Links.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() => {
        "total": total,
        "count": count,
        "per_page": perPage,
        "current_page": currentPage,
        "total_pages": totalPages,
        "links": links.toJson(),
      };
}

class Links {
  dynamic next;
  dynamic prev;

  Links({
    this.next,
    this.prev,
  });

  factory Links.fromJson(Map<String, dynamic> json) => Links(
        next: json["next"],
        prev: json["prev"],
      );

  Map<String, dynamic> toJson() => {
        "next": next,
        "prev": prev,
      };
}
