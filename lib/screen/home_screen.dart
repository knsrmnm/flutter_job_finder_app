import 'package:flutter/material.dart';
import 'package:flutter_job_finder_app/data/job_list.dart';
import 'package:flutter_job_finder_app/model/job.dart';
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0, right: 15.0, left: 15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hi, Beca👋", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.w800, color: Color.fromRGBO(29, 41, 64, 1.0))),
                        const SizedBox(height: 3.0),
                        Text("The purpose of life is a life of purpose.", style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w600, color: Colors.black45)),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 10.0),
                      child: Image.asset("assets/images/avatar.png", width: 40.0),
                    ),
                  ],
                ),
                const SizedBox(height: 30.0),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[200],
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(LineIcons.sistrix, color: Colors.grey),
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.grey),
                      hintText: "Search job",
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                Text("Suggested Job", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w700, color: Color.fromRGBO(29, 41, 64, 1.0))),
                const SizedBox(height: 10.0),
                _makeSuggestedJobsEl(),
                const SizedBox(height: 30.0),
                Text("New Arrivals", style: TextStyle(fontSize: 13.0, fontWeight: FontWeight.w700, color: Color.fromRGBO(29, 41, 64, 1.0))),
                const SizedBox(height: 10.0),
                _makeNewArrivalsEl(Theme.of(context).scaffoldBackgroundColor),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


/* ---  Widget --- */

/// Make suggested jobs slider widget.
Widget _makeSuggestedJobsEl() {
  List<Widget> contents = [];
  contents.add(_makeSuggestedJobCardEl(JobList.spotifyJob));
  contents.add(const SizedBox(width: 10.0));
  contents.add(_makeSuggestedJobCardEl(JobList.microsoftJob));
  contents.add(const SizedBox(width: 10.0));
  contents.add(_makeSuggestedJobCardEl(JobList.googleJob1));
  return SingleChildScrollView(
    scrollDirection: Axis.horizontal,
    child: Row(
      children: contents,
    ),
  );
}

/// Make suggested job card widget.
Widget _makeSuggestedJobCardEl(Job job) {
  return Container(
    height: 180.0,
    width: 150.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      color: Colors.teal.withOpacity(0.1),
    ),
    child: Center(
      child: Column(
        children: [
          const SizedBox(height: 25.0),
          Image.asset("assets/icons/" + job.image, width: 25.0),
          const SizedBox(height: 30.0),
          Text(job.position, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13.0)),
          const SizedBox(height: 5.0),
          Text(job.company, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10.0, color: Colors.grey)),
          const SizedBox(height: 20.0),
          Text(job.site, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 12.0)),
        ],
      ),
    ),
  );
}

/// Make new arrival jobs widget.
Widget _makeNewArrivalsEl(Color color) {
  return Column(
    children: [
      _makeNewArrivalJobEl(JobList.twitterJob, color),
      const SizedBox(height: 10.0),
      _makeNewArrivalJobEl(JobList.teslaJob, color),
      const SizedBox(height: 10.0),
      _makeNewArrivalJobEl(JobList.googleJob2, color),
    ],
  );
}

/// Make new arrival job widget.
Widget _makeNewArrivalJobEl(Job job, Color color) {
  return Container(
    height: 70.0,
    decoration: BoxDecoration(
      border: Border.all(color: Colors.grey, width: 0.1),
      borderRadius: BorderRadius.all(Radius.circular(15.0)),
      color: color,
    ),
    child: Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset("assets/icons/"+job.image, width: 25.0),
              const SizedBox(width: 20.0),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(job.position, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 13.0)),
                  const SizedBox(height: 3.0),
                  Text(job.company, style: TextStyle(fontWeight: FontWeight.w500, fontSize: 11.0, color: Colors.grey)),
                ],
              ),
            ],
          ),
          Icon(LineIcons.chevronCircleRight),
        ],
      ),
    )
  );
}
