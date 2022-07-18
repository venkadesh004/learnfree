import 'package:flutter/material.dart';
import 'package:learnfree/instituteDetailsTeacher.dart';
import 'package:learnfree/institutionDashboard.dart';
import 'package:learnfree/teachersProfile.dart';

class PersonAcceptNotVerified extends StatelessWidget {
  const PersonAcceptNotVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(143, 255, 0, 1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Teacher",
          style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.normal
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const InstitutionDashboard()));
          },
          color: Colors.black,
          icon: const Icon(
              Icons.arrow_back
          ),
        ),
      ),
      body: const PersonAcceptanceNotVerified(),
    );
  }
}


class PersonAccept extends StatelessWidget {
  const PersonAccept({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(143, 255, 0, 1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Teacher",
          style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.normal
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const InstitutionDashboard()));
          },
          color: Colors.black,
          icon: const Icon(
              Icons.arrow_back
          ),
        ),
      ),
      body: const PersonAcceptance(),
    );
  }
}

class PersonAcceptanceNotVerified extends StatelessWidget {
  const PersonAcceptanceNotVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color.fromRGBO(248, 248, 248, 1)
            ),
            width: 200,
            height: 200,
            child: ClipRect(
              child: Image.asset('assets/UserPerson.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(left: 20, right: 30),
            child: const TeacherDetailsNotVerified(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(143, 255, 0, 1)
                  )
              ),
              onPressed: () {},
              child: SizedBox(
                width: 200,
                height: 80,
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Text(
                    "Accept Teacher",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Text(
                  "Terms and Conditions",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}


class PersonAcceptance extends StatelessWidget {
  const PersonAcceptance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 30),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color.fromRGBO(248, 248, 248, 1)
            ),
            width: 200,
            height: 200,
            child: ClipRect(
              child: Image.asset('assets/UserPerson.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(left: 20, right: 30),
            child: const TeacherDetails(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(143, 255, 0, 1)
                  )
              ),
              onPressed: () {},
              child: SizedBox(
                width: 200,
                height: 80,
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Text(
                    "Accept Teacher",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25
                    ),
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Text(
                  "Terms and Conditions",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Text(
                  "Privacy Policy",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.w500
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}