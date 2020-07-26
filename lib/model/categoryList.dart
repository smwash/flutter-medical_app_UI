import 'package:flutter/material.dart';
import 'package:med_app/screens/doctorsPage.dart';

import '../constants.dart';

class CategoryList extends StatefulWidget {
  final IconData icon;
  final String iconLabel;
  bool isSelected = false;

  CategoryList(
      {Key key,
      @required this.icon,
      @required this.iconLabel,
      this.isSelected = false})
      : super(key: key);

  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkResponse(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 5.0),
        decoration: BoxDecoration(
          color: isSelected ? korangecolor : Colors.white,
          borderRadius: BorderRadius.circular(35.0),
          boxShadow: [
            BoxShadow(
                color: Colors.grey, offset: Offset(1, 2), blurRadius: 10.0),
          ],
        ),
        child: Column(
          children: [
            Icon(widget.icon, color: ksecondpghero, size: 70.0),
            Text(
              widget.iconLabel,
              style: TextStyle(fontSize: 22.0),
            ),
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DoctorsPage(),
          ),
        );
      },
    );
  }
}
