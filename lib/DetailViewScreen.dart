import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:photo_gallery/PhotoGalleryScreen.dart';
import 'package:photo_gallery/main.dart';

class DetailViewScreen extends StatelessWidget {
  final Category category;

  DetailViewScreen(this.category);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category.name),
        leading: IconButton.filled(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => PhotoGalleryScreen()));
          },
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))),
            backgroundColor: Colors.white38,
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))],
      ),
      body: Column(
        children: [
          Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  spreadRadius: 0.0,
                  blurRadius: 20,
                  offset: Offset(0, 8),
                )
              ]),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.network(category.imagePath),
              )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              category.description,
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 50,
            width: 450,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (_) => PhotoGalleryScreen()));
                },
                child: Text(
                  'See More',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF2cab00),
                  foregroundColor: Colors.white,
                )),
          ),
          // Add other details or related images here

        ],
      ),
    );
  }
}
