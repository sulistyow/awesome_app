import 'package:awesome_app/domain/entities/photo.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ListImageCard extends StatelessWidget {
  final PhotoEntity photo;

  const ListImageCard({super.key, required this.photo});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(14), bottomLeft: Radius.circular(10)),
              child: CachedNetworkImage(
                height: 80,
                width: 100,
                imageUrl: photo.src!.medium!,
                fit: BoxFit.cover,
                placeholder: (context, url) => Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          Flexible(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("by ${photo.photographer!}", style: TextStyle(color: Colors.black),),
                  Text(photo.alt!, overflow: TextOverflow.ellipsis,style: TextStyle(fontSize: 12),),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
