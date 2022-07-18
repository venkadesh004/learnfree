import 'package:flutter/material.dart';
import 'package:learnfree/instituteDetailsTeacher.dart';
import 'package:learnfree/main.dart';
import 'package:learnfree/personApply.dart';
import 'package:learnfree/selectionPage.dart';
import 'package:learnfree/teachersProfile.dart';

class InstitutionDashboard extends StatelessWidget {
  const InstitutionDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(143, 255, 0, 1),
        title: const Text(
          "Institution",
          style: TextStyle(
              fontSize: 20,
              color: Colors.black,
              fontWeight: FontWeight.normal
          ),
        ),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const InstituteDetailsApplied()));
              },
              icon: const Icon(
                Icons.account_balance,
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
                    "Hey Guys,",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.w400
                    ),
                  ),
                  Text(
                    "Some teachers are interested in Teaching You",
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
                    TeachersContainersVerified(),
                    TeachersContainersNotVerified(),
                    TeachersContainersNotVerified(),
                    TeachersContainersVerified(),
                    TeachersContainersNotVerified(),
                    TeachersContainersVerified(),
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: const Text(
                "Requirements",
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
                    TeacherRequired(),
                    TeacherRequired(),
                    TeacherRequired(),
                    TeacherRequired(),
                    TeacherRequired(),
                    TeacherRequired(),
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

class TeachersContainersVerified extends StatelessWidget {
  const TeachersContainersVerified({Key? key}) : super(key: key);

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
          Navigator.push(context, MaterialPageRoute(builder: (context) => const PersonAccept()));
        },
        child: SizedBox(
          width: 100,
          height: 180,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: ClipRect(
                  child: Image.asset('assets/UserPerson.png'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  children: <Widget>[
                    const Text(
                      "S Venkadesh,",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w300
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 5),
                      width: 15,
                      height: 15,
                      child: ClipRect(
                        child: Image.asset('assets/verification.png')
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

class TeachersContainersNotVerified extends StatelessWidget {
  const TeachersContainersNotVerified({Key? key}) : super(key: key);

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
          Navigator.push(context, MaterialPageRoute(builder: (context) => const PersonAcceptNotVerified()));
        },
        child: SizedBox(
          width: 100,
          height: 180,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: ClipRect(
                  child: Image.asset('assets/UserPerson.png'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: const Text(
                  "S Venkadesh",
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

class TeacherRequired extends StatelessWidget {
  const TeacherRequired({Key? key}) : super(key: key);

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
        onPressed: () {},
        child: SizedBox(
          width: 100,
          height: 180,
          child: Column(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: ClipRect(
                  child: Image.asset('assets/UserPerson.png'),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: const Text(
                  "Maths",
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