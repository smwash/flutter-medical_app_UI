import 'package:flutter/material.dart';

import '../constants.dart';

class IconList extends StatelessWidget {
  final IconData icons;
  final active;
  IconList({@required this.icons, this.active = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 13.0),
      padding: EdgeInsets.all(30.0),
      decoration: BoxDecoration(
        color: active ? korangecolor : Colors.white,
        borderRadius: BorderRadius.circular(30.0),
        boxShadow: [
          BoxShadow(color: Colors.grey, offset: Offset(1, 1), blurRadius: 10.0),
        ],
      ),
      child: Icon(
        icons,
        size: 60.0,
        color: ksecondpghero,
      ),
    );
  }
}
