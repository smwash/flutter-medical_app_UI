import 'package:flutter/material.dart';
import 'package:med_app/model/category.dart';
import 'package:med_app/model/iconList.dart';

import '../constants.dart';

class DoctorsPage extends StatefulWidget {
  @override
  _DoctorsPageState createState() => _DoctorsPageState();
}

class _DoctorsPageState extends State<DoctorsPage> {
  Column _doctorSelection() {
    List<Widget> topDoctors = [];
    profile.forEach((doctor) {
      topDoctors.add(
        Container(
          margin: EdgeInsets.symmetric(horizontal: 3.0, vertical: 10.0),
          padding: EdgeInsets.symmetric(horizontal: 3.0, vertical: 3.0),
          height: 150.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey, offset: Offset(0, 5), blurRadius: 10.0),
            ],
          ),
          child: Row(
            children: [
              Container(
                height: 150.0,
                width: 135.0,
                decoration: BoxDecoration(
                  color: kfirstpghero,
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(doctor.imageUrl),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctor.name,
                      style: TextStyle(
                          fontSize: 27.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'NunitoSans',
                          color: Colors.black),
                    ),
                    Text(
                      doctor.occupation,
                      style: TextStyle(fontSize: 22.0, color: Colors.grey),
                    ),
                    SizedBox(height: 10.0),
                    Row(
                      children: [
                        Icon(doctor.starIcon,
                            color: Color(0xffffd700), size: 32.0),
                        SizedBox(width: 10.0),
                        Text(
                          doctor.rating,
                          style: TextStyle(fontSize: 21.0),
                        ),
                        SizedBox(width: 23.0),
                        Icon(
                          doctor.time,
                          color: Colors.teal,
                          size: 28.0,
                        ),
                        SizedBox(width: 8.0),
                        Text(
                          doctor.timeAvailable,
                          style: TextStyle(fontSize: 20.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
    return Column(
      children: topDoctors,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 20.0),
                height: 340.0,
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    focal: Alignment.topRight,
                    radius: 3.0,
                    colors: [
                      (ksecondpghero),
                      (kiconcolor),
                      (kfirstpghero),
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          child: Container(
                            padding: EdgeInsets.all(15.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                            ),
                            child: Icon(
                              Icons.arrow_back_ios,
                              size: 30.0,
                              color: Colors.black,
                            ),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                          },
                        ),
                        Icon(
                          Icons.menu,
                          size: 45.0,
                          color: Colors.white,
                        )
                      ],
                    ),
                    SizedBox(height: 100.0),
                    Row(
                      children: [
                        Text(
                          'Top Doctors',
                          style: TextStyle(
                              fontSize: 50.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(width: 5.0),
                        Icon(
                          Icons.stars,
                          size: 30.0,
                          color: Color(0xffffd700),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 25.0),
            transform: Matrix4.translationValues(0.0, -70.0, 0.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(80.0),
              ),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(fontSize: 24.0, color: Colors.grey),
                    )
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      IconList(
                        icons: Icons.pan_tool,
                        active: true,
                      ),
                      IconList(
                        icons: Icons.mode_edit,
                      ),
                      IconList(
                        icons: Icons.loupe,
                      ),
                      IconList(
                        icons: Icons.pan_tool,
                      ),
                      IconList(
                        icons: Icons.location_on,
                      ),
                    ],
                  ),
                ),
                _doctorSelection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
