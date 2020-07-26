import 'package:flutter/material.dart';
import 'package:med_app/model/categoryList.dart';

import '../constants.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
                height: 400.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomCenter,
                    colors: [
                      (Colors.white),
                      (kfirstpghero),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(400.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(left: 10.0),
                          height: 80.0,
                          width: 80.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: DecorationImage(
                                image: AssetImage('images/profilepic.jpg'),
                                fit: BoxFit.cover),
                          ),
                        ),
                        Icon(
                          Icons.menu,
                          size: 50.0,
                          color: Colors.black,
                        ),
                      ],
                    ),
                    SizedBox(height: 50.0),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Hello',
                            style: TextStyle(
                                fontSize: 32.0, fontFamily: 'NunitoSans'),
                          ),
                          Text(
                            'Jessika',
                            style: TextStyle(
                                fontSize: 42.0,
                                fontFamily: 'NunitoSans-ExtraBold'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 15.0),
                    Container(
                      margin: EdgeInsets.symmetric(
                          vertical: 10.0, horizontal: 10.0),
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 15.0),
                      height: 80.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 1),
                              blurRadius: 3.0),
                        ],
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'Search..',
                            hintStyle: TextStyle(fontSize: 22.0),
                            icon: Icon(Icons.search,
                                color: ksecondpghero, size: 35.0),
                            border: InputBorder.none),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Stack(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                height: 240.0,
                decoration: BoxDecoration(
                  color: ksecondpghero.withOpacity(0.7),
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 25.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Stay Home!',
                            style: TextStyle(
                                fontSize: 32.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'NunitoSans-ExtraBold',
                                color: Colors.white),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Schedule an e-visit \nand discuss the plan \nwith a doctor.',
                            style: TextStyle(
                                fontSize: 25.0,
                                fontFamily: 'NunitoSans',
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: 200.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('images/homecard.png'),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                right: 5.0,
                top: 0.0,
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  decoration: BoxDecoration(
                      color: korangecolor, shape: BoxShape.circle),
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 30.0,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              'What do you need?',
              style: TextStyle(
                  fontSize: 32.0,
                  fontFamily: 'NunitoSans-Bold',
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          GridView.count(
            padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 10.0),
            crossAxisCount: 3,
            crossAxisSpacing: 25.0,
            mainAxisSpacing: 20.0,
            physics: ScrollPhysics(),
            shrinkWrap: true,
            children: [
              CategoryList(
                icon: Icons.pregnant_woman,
                iconLabel: 'Clinic',
              ),
              CategoryList(
                icon: Icons.local_hospital,
                iconLabel: 'Hospital',
              ),
              CategoryList(
                icon: Icons.phone_in_talk,
                iconLabel: 'Consultation',
              ),
              CategoryList(
                icon: Icons.local_shipping,
                iconLabel: 'Ambulance',
              ),
              CategoryList(
                icon: Icons.child_care,
                iconLabel: 'Child Care',
              ),
              CategoryList(
                icon: Icons.favorite,
                iconLabel: 'CheckUp',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
