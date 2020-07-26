import 'package:flutter/material.dart';

class DocProfile {
  String name;
  String occupation;
  String rating;
  String timeAvailable;
  IconData time;
  IconData starIcon;
  String imageUrl;

  DocProfile(
      {this.name,
      this.imageUrl,
      this.occupation,
      this.rating,
      this.timeAvailable,
      this.time,
      this.starIcon});
}

List<DocProfile> profile = [
  DocProfile(
    name: 'Dr. Jaison',
    occupation: 'Pulmanalogist',
    imageUrl: 'images/imagetile1.png',
    rating: '5.0',
    timeAvailable: '8.00 AM - 1.00PM',
    time: Icons.access_time,
    starIcon: Icons.star,
  ),
  DocProfile(
    name: 'Dr. Wilson',
    occupation: 'General Pulmanalogist',
    imageUrl: 'images/imagetile2.png',
    rating: '4.5',
    timeAvailable: '11.00 AM - 2.00PM',
    time: Icons.access_time,
    starIcon: Icons.star,
  ),
  DocProfile(
    name: 'Dr. Adams',
    occupation: 'Physchatirist',
    imageUrl: 'images/imagetile3.png',
    rating: '5.0',
    timeAvailable: '12.00 AM - 3.00PM',
    time: Icons.access_time,
    starIcon: Icons.star,
  ),
  DocProfile(
    name: 'Dr. Esther',
    occupation: 'Pulmanalogist',
    imageUrl: 'images/imagetile1.png',
    rating: '4.5',
    timeAvailable: '10.00 AM - 18.00PM',
    time: Icons.access_time,
    starIcon: Icons.star,
  ),
];
