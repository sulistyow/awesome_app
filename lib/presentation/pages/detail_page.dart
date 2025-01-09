import 'package:awesome_app/presentation/bloc/image_detail_bloc.dart';
import 'package:awesome_app/presentation/bloc/image_detail_event.dart';
import 'package:awesome_app/presentation/bloc/image_detail_state.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:url_launcher/link.dart';

class DetailPage extends StatefulWidget {
  final int photoId;

  const DetailPage({super.key, required this.photoId});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  void initState() {
    super.initState();
    context
        .read<ImageDetailBloc>()
        .add(FetchImageDetail(widget.photoId.toString()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: BlocBuilder<ImageDetailBloc, ImageDetailState>(
        builder: (context, state) {
          if (state is isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is isLoaded) {
            var photo = state.photo;
            return Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 350,
                  child: CachedNetworkImage(
                    imageUrl: photo.src!.landscape!,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Photo by ${photo.photographer}",
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Image url",
                        style: TextStyle(fontSize: 14),
                      ),
                      Link(
                        uri: Uri.parse('${photo.url}'),
                        target: LinkTarget.blank,
                        builder: (context, followLink) => GestureDetector(
                          onTap: followLink,
                          child: Text(
                            '${photo.url}',
                            style: TextStyle(fontSize: 12, color: Colors.blue),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Description',
                        style: TextStyle(fontSize: 14),
                      ),
                      Text(
                        photo.alt!.isEmpty ? "--" : '${photo.alt}',
                        textAlign: TextAlign.justify,
                        style: TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            );
          } else {
            return Center(
              child: Text("Terjadi Kesalahan"),
            );
          }
        },
      ),
    );
  }
}
