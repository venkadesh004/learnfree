import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:learnfree/instituteDetailsTeacher.dart';
import 'package:learnfree/main.dart';
import 'package:learnfree/selectionPage.dart';
import 'package:learnfree/teachersProfile.dart';
import 'package:http/http.dart' as http;

class TeacherDashboard extends StatelessWidget {
  const TeacherDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(143, 255, 0, 1),
        title: const Text(
          "Teacher",
          style: TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.normal
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherProfile()));
              },
              icon: const Icon(
                Icons.person,
                color: Colors.black,
              )
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const <Widget>[
                  Text(
                    "Hi Venkadesh,",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w400
                    ),
                  ),
                  Text(
                    "Some Children’s are eager to Learn From You",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w300
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const <Widget>[
                    InstitutionContainers(),
                    InstitutionContainers(),
                    InstitutionContainersNotVerified(),
                    InstitutionContainers(),
                    InstitutionContainers(),
                    InstitutionContainersNotVerified(),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: const Text(
                "Institution's Applied",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: const <Widget>[
                    InstitutionContainersApplied(),
                    InstitutionContainersAppliedNotVerified(),
                    InstitutionContainersApplied(),
                    InstitutionContainersApplied(),
                    InstitutionContainersAppliedNotVerified(),
                    InstitutionContainersApplied(),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class InstitutionContainers extends StatelessWidget {
  const InstitutionContainers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Colors.white
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(width: 1, color: Colors.grey),
                )
            )
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const InstituteDetails()));
        },
        child: SizedBox(
          width: 100,
          height: 180,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: ClipRect(
                  child: Image.asset('assets/Institution.png'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: const Text(
                  "Sevalayam, \nMadurai",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    fontWeight: FontWeight.w300
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InstitutionContainersNotVerified extends StatelessWidget {
  const InstitutionContainersNotVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Colors.white
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(width: 1, color: Colors.grey),
                )
            )
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const InstituteDetailsNotVerified()));
        },
        child: SizedBox(
          width: 100,
          height: 180,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: ClipRect(
                  child: Image.asset('assets/Institution.png'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: const Text(
                  "Sevalayam, \nMadurai",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w300
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InstitutionContainersApplied extends StatelessWidget {
  const InstitutionContainersApplied({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Colors.white
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(width: 1, color: Colors.grey),
                )
            )
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const InstituteDetailsApplied()));
        },
        child: SizedBox(
          width: 100,
          height: 180,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: ClipRect(
                  child: Image.asset('assets/Institution.png'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  children: <Widget>[
                    const Text(
                      "Sevalayam, \nMadurai",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: ClipRect(
                        child: Image.asset('assets/verification.png'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class InstitutionContainersAppliedNotVerified extends StatelessWidget {
  const InstitutionContainersAppliedNotVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
                Colors.white
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(width: 1, color: Colors.grey),
                )
            )
        ),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const InstituteDetailsAppliedNotVerified()));
        },
        child: SizedBox(
          width: 100,
          height: 180,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: ClipRect(
                  child: Image.asset('assets/Institution.png'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  children: <Widget>[
                    const Text(
                      "Sevalayam, \nMadurai",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                    SizedBox(
                      width: 25,
                      height: 25,
                      child: ClipRect(
                        child: Image.asset('assets/verification.png'),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}