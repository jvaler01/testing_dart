import 'dart:convert';

import 'package:paquetes/classes/data.dart';

RequestResp requestRespFromJson(String str) => RequestResp.fromJson(json.decode(str));

String requestRespToJson(RequestResp data) => json.encode(data.toJson());

class RequestResp {
    int page;
    int perPage;
    int total;
    int totalPages;
    List<Data> data;

    RequestResp({
        required this.page,
        required this.perPage,
        required this.total,
        required this.totalPages,
        required this.data,
    });

    factory RequestResp.fromJson(Map<String, dynamic> json) => RequestResp(
        page: json["page"],
        perPage: json["per_page"],
        total: json["total"],
        totalPages: json["total_pages"],
        data: List<Data>.from(json["data"].map((x) => Data.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "page": page,
        "per_page": perPage,
        "total": total,
        "total_pages": totalPages,
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
    };
}


