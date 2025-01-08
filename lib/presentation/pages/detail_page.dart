import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final int id;
  const DetailPage({super.key, required this.id});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Page"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://i.natgeofe.com/k/6eb7149d-9876-40ac-9bf7-d261931ddb56/poland-warsaw_16x9.jpg?w=1200"))),
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
                  "Photo by Name",
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "https://i.natgeofe.com/k/6eb7149d-9876-40ac-9bf7-d261931ddb56/poland-warsaw_16x9.jpg?w=1200",
                  style: TextStyle(fontSize: 12)
                      .copyWith(color: Colors.blueAccent),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Each item should be tappable and direct the user to a detailed page. The detail page must contain the photo itself in a larger size and its description ",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
