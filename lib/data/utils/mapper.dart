import 'package:awesome_app/data/models/detail_response.dart';
import 'package:awesome_app/data/models/photo.dart';
import 'package:awesome_app/data/models/src.dart';
import 'package:awesome_app/domain/entities/photo.dart';
import 'package:awesome_app/domain/entities/photo_detail.dart';

import '../../domain/entities/src.dart';

extension PhotoMapper on Photo {
  PhotoEntity toEntity() {
    return PhotoEntity(
      id: id,
      width: width,
      height: height,
      url: url,
      photographer: photographer,
      photographerUrl: photographerUrl,
      photographerId: photographerId,
      avgColor: avgColor,
      src: src?.toEntity(),
      liked: liked,
      alt: alt,
    );
  }
}

extension DetailResponseMapper on DetailResponse {
  PhotoDetail toEntity() {
    return PhotoDetail(
      id: id,
      width: width,
      height: height,
      url: url,
      photographer: photographer,
      photographerUrl: photographerUrl,
      photographerId: photographerId,
      avgColor: avgColor,
      src: src?.toEntity(),
      liked: liked,
      alt: alt,
    );
  }
}

extension SrcMapper on Src {
  SrcEntity toEntity() {
    return SrcEntity(
      original: original,
      large2X: large2X,
      large: large,
      medium: medium,
      small: small,
      portrait: portrait,
      landscape: landscape,
      tiny: tiny,
    );
  }
}
