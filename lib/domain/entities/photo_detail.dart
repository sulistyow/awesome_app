import 'package:awesome_app/domain/entities/src.dart';
import 'package:equatable/equatable.dart';

class PhotoDetail extends Equatable {
  final int? id;
  final int? width;
  final int? height;
  final String? url;
  final String? photographer;
  final String? photographerUrl;
  final int? photographerId;
  final String? avgColor;
  final SrcEntity? src;
  final bool? liked;
  final String? alt;

  PhotoDetail({
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
