import 'dart:convert';

import 'package:awesome_app/data/models/image_response.dart';
import 'package:awesome_app/domain/entities/photo_detail.dart';
import 'package:equatable/equatable.dart';

class DetailResponse extends Equatable {
  final int? id;
  final int? width;
  final int? height;
  final String? url;
  final String? photographer;
  final String? photographerUrl;
  final int? photographerId;
  final String? avgColor;
  final Src? src;
  final bool? liked;
  final String? alt;

  DetailResponse({
    this.id,
    this.width,
    this.height,
    this.url,
    this.photographer,
    this.photographerUrl,
    this.photographerId,
    this.avgColor,
    this.src,
    this.liked,
    this.alt,
  });

  factory DetailResponse.fromJson(String str) =>
      DetailResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory DetailResponse.fromMap(Map<String, dynamic> json) => DetailResponse(
        id: json["id"],
        width: json["width"],
        height: json["height"],
        url: json["url"],
        photographer: json["photographer"],
        photographerUrl: json["photographer_url"],
        photographerId: json["photographer_id"],
        avgColor: json["avg_color"],
        src: json["src"] == null ? null : Src.fromMap(json["src"]),
        liked: json["liked"],
        alt: json["alt"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "width": width,
        "height": height,
        "url": url,
        "photographer": photographer,
        "photographer_url": photographerUrl,
        "photographer_id": photographerId,
        "avg_color": avgColor,
        "src": src?.toMap(),
        "liked": liked,
        "alt": alt,
      };

  PhotoDetail toEntity() => PhotoDetail(
        id: this.id,
        width: this.width,
        height: this.height,
        url: this.url,
        photographer: this.photographer,
        photographerUrl: this.photographerUrl,
        photographerId: this.photographerId,
        avgColor: this.avgColor,
        src: this.src?.toEntity(),
        liked: this.liked,
        alt: this.alt,
      );

  @override
  List<Object?> get props => [
        id,
        width,
        height,
        url,
        photographer,
        photographerUrl,
        photographerId,
        avgColor,
        src,
        liked,
        alt
      ];
}
