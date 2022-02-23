import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:line_icons/line_icons.dart';

/// Home screen.
class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        leading: Icon(LineIcons.creativeCommonsNoDerivativeWorks, color: Colors.black87, size: 25.0),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Row(
              children: [
                Icon(LineIcons.sms, color: Colors.black87, size: 25.0),
                const SizedBox(width: 15.0),
                Icon(LineIcons.bell, color: Colors.black87, size: 25.0),
              ],
            )
          )
        ],
      ),
    );
  }
}
