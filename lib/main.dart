import 'package:flutter/material.dart';
import 'package:photo_gallery/PhotoGalleryScreen.dart';

void main() => runApp(PhotoGalleryApp());

class PhotoGalleryApp extends StatelessWidget {

  final primaryColor = Color(0xFF2cab00);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Photo Gallery',
      home: PhotoGalleryScreen(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
        )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Category {
  final String name;
  final String imagePath;
  final String description;

  Category({required this.name, required this.imagePath, required this.description});
}

List<Category> categories = [
  Category(
    name: 'Mood',
    imagePath: 'https://images.pexels.com/photos/859194/pexels-photo-859194.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  Category(
    name: 'Nature',
    imagePath: 'https://images.pexels.com/photos/1276518/pexels-photo-1276518.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  Category(
    name: 'Asthetic',
    imagePath: 'https://images.pexels.com/photos/18363602/pexels-photo-18363602/free-photo-of-german-kabirski-jewelry.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  Category(
    name: 'Animal',
    imagePath: 'https://images.pexels.com/photos/2850833/pexels-photo-2850833.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  Category(
    name: 'City',
    imagePath: 'https://images.pexels.com/photos/14532556/pexels-photo-14532556.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  Category(
    name: 'Sky',
    imagePath: 'https://images.pexels.com/photos/6357190/pexels-photo-6357190.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  Category(
    name: 'Flower',
    imagePath: 'https://images.pexels.com/photos/1031965/pexels-photo-1031965.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),
  Category(
    name: 'Road',
    imagePath: 'https://images.pexels.com/photos/2389476/pexels-photo-2389476.jpeg',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
  ),

  // Add more categories here
];
