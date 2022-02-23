import 'package:flutter/material.dart';
import 'package:flutter_job_finder_app/screen/home_screen.dart';

/// Splash screen.
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.0),
          child: Center(
            child: Column(
              children: [
                const SizedBox(height: 50.0),
                Image.asset("assets/images/concept-of-remote-team.png"),
                const SizedBox(height: 15.0),
                Text("Get The Job", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25.0)),
                Text("That You Dream.", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25.0)),
                const SizedBox(height: 15.0),
                Container(
                  width: 250,
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0, color: Colors.black38),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 50.0),
                ElevatedButton(
                  onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen())); },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black87,
                    elevation: 5.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(35.0),
                    ),
                  ),
                  child: Container(
                    width: 150,
                    height: 50,
                    child: Center(
                      child: Text('Start', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18.0, color: Colors.white)),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
