import 'package:awesome_app/domain/entities/photo.dart';
import 'package:awesome_app/utils/routes.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class GridImageCard extends StatelessWidget {
  final PhotoEntity photo;

  const GridImageCard({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, DETAIL_PAGE_ROUTE, arguments: photo.id);
      },
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: CachedNetworkImage(
          imageUrl: photo.src!.medium!,
          fit: BoxFit.cover,
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}
