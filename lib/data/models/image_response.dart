import 'dart:convert';

import 'package:awesome_app/domain/entities/src.dart';
import 'package:equatable/equatable.dart';
import 'package:awesome_app/domain/entities/photo.dart';

class ImageResponse {
  final int? page;
  final int? perPage;
  final List<Photo>? photos;
  final int? totalResults;
  final String? nextPage;

  ImageResponse({
    this.page,
    this.perPage,
    this.photos,
    this.totalResults,
    this.nextPage,
  });

  factory ImageResponse.fromJson(String str) =>
      ImageResponse.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ImageResponse.fromMap(Map<String, dynamic> json) => ImageResponse(
        page: json["page"],
        perPage: json["per_page"],
        photos: json["photos"] == null
            ? []
            : List<Photo>.from(json["photos"]!.map((x) => Photo.fromMap(x))),
        totalResults: json["total_results"],
        nextPage: json["next_page"],
      );

  Map<String, dynamic> toMap() => {
        "page": page,
        "per_page": perPage,
        "photos": photos == null
            ? []
            : List<dynamic>.from(photos!.map((x) => x.toMap())),
        "total_results": totalResults,
        "next_page": nextPage,
      };
}

class Photo extends Equatable {
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

  Photo({
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

  factory Photo.fromJson(String str) => Photo.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Photo.fromMap(Map<String, dynamic> json) => Photo(
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

  PhotoEntity toEntity() {
    return PhotoEntity(
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
        alt: this.alt);
  }

  @override
  // TODO: implement props
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

class Src extends Equatable {
  final String? original;
  final String? large2X;
  final String? large;
  final String? medium;
  final String? small;
  final String? portrait;
  final String? landscape;
  final String? tiny;

  Src({
    this.original,
    this.large2X,
    this.large,
    this.medium,
    this.small,
    this.portrait,
    this.landscape,
    this.tiny,
  });

  factory Src.fromJson(String str) => Src.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory Src.fromMap(Map<String, dynamic> json) => Src(
        original: json["original"],
        large2X: json["large2x"],
        large: json["large"],
        medium: json["medium"],
        small: json["small"],
        portrait: json["portrait"],
        landscape: json["landscape"],
        tiny: json["tiny"],
      );

  Map<String, dynamic> toMap() => {
        "original": original,
        "large2x": large2X,
        "large": large,
        "medium": medium,
        "small": small,
        "portrait": portrait,
        "landscape": landscape,
        "tiny": tiny,
      };

  SrcEntity toEntity() {
    return SrcEntity(
        original: this.original,
        large2X: this.large2X,
        large: this.large,
        medium: this.medium,
        small: this.small,
        portrait: this.portrait,
        landscape: this.landscape,
        tiny: this.tiny);
  }

  @override
  List<Object?> get props =>
      [original, large2X, large, medium, small, portrait, landscape, tiny];
}
