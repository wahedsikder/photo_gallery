import 'package:flutter/material.dart';
import 'package:photo_gallery/DetailViewScreen.dart';
import 'package:photo_gallery/main.dart';

class PhotoGalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Use GridView.builder to create a responsive grid layout
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Photo Gallery', style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w300,
          fontFamily: 'Popin',
        ),),
        leading: IconButton.filled(
          onPressed: (){},
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10))
            ),
            backgroundColor: Colors.white38,
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert))
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          // Define the number of columns based on screen size
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: MediaQuery.of(context).size.width > 600 ? 4 : 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) => DetailViewScreen(categories[index])));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  image: DecorationImage(
                    image: NetworkImage(categories[index].imagePath),
                    fit: BoxFit.cover,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 0.0,
                      blurRadius: 7,
                      offset: Offset(0, 8),
                    )
                  ]
                ),
                child: Center(
                  child: Text(
                    categories[index].name,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}