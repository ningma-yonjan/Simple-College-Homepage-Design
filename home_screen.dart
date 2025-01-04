import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/about_screen.dart';
import 'package:flutter_application_1/widget/course_card.dart';
import 'package:flutter_application_1/widget/event_tile.dart';
// import 'package:flutter_application_1/widget/course_card.dart';
import 'package:flutter_application_1/screen/notice_screen.dart';

import 'package:flutter_application_1/widget/faculty_card.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/logo.png',
              width: 40,
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Padmakanya Multiple Campus ",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                ),
                Text(
                  "Bagbazar, Kathmandu",
                  style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(211, 255, 81, 0)),
                ), // column case  cross axis allignment.
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(8.0)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "WELCOME TO THE COLLEGE",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Text(
                            "Padma Kanya Multiple Campus (PKMC) was established in 1951(Aswin 2008 B.S.) as first women’s campus of Nepal. Initially, its academic activities were brought into operation at the present location of Kanya School, Dillibazar. King Tribhuvan inaugurated the campus. The then Prime Minister (Head of the Government) Mohan Shamsher Rana, Finance Minister Subarna Sumsher Rana, Home Minister B. P. Koirala, Minister of Education, Nripa Jung Rana, and the social workers of the time were present on the occasion. At the time of establishment, its academic programme started in eight subjects of humanities."),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("The campus then was shift..."),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context)
                              .push(MaterialPageRoute(builder: (context) {
                            return AboutScreen();
                          }));
                        },
                        child: Text("+ Read More")),
                  ],
                ),
              ),
              Text(
                "Our Faculties",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    FacultyCard(
                      text: "Faculty of Humanities and Social Sciences",
                    ),
                    FacultyCard(
                      text: "Faculty of Management",
                    ),
                    FacultyCard(
                      text: "Institute of Science and Technology",
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Our Courses",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                mainAxisSpacing: 20,
                crossAxisSpacing: 20,
                // childAspectRatio: 15,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  CourseCard(
                    title: "BCA",
                    subtitle: "Bachelor in Computer Application",
                  ),
                  CourseCard(
                    title: "BBA",
                    subtitle: "Bachelor in Business Administration ",
                  ),
                  CourseCard(
                    title: "BIM",
                    subtitle: "Bachelor in Information Management",
                  ),
                  CourseCard(
                    title: "BIM",
                    subtitle: "Bachelor in Information Management",
                  ),
                  CourseCard(
                    title: "BIM",
                    subtitle: "Bachelor in Information Management",
                  ),
                  CourseCard(
                    title: "BIM",
                    subtitle: "Bachelor in Information Management",
                  ),
                ],
              ),
              Text(
                "Event",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w900,
                ),
              ),
              ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: EventTile(),
                    );
                  }),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return NoticeScreen();
                    }));
                  },
                  child: Text("Notices")),
            ],
          ),
        ),
      ),
    );
  }
}
