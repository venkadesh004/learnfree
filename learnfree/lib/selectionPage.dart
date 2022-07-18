import 'package:flutter/material.dart';
import 'package:learnfree/institutionDashboard.dart';
import 'package:learnfree/teacherDashboard.dart';

class SelectionPage extends StatelessWidget {
  const SelectionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(
                Colors.white
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                  side: const BorderSide(width: 2, color: Colors.black),
                )
              )
            ),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherDashboard()));
            },
            child: SizedBox(
              width: 200,
              height: 250,
              child: Column(
                children: <Widget>[
                  ClipRect(
                    child: Image.asset('assets/UserPerson.png'),
                  ),
                  const Text(
                    "Teacher",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 25
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.white
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                        side: const BorderSide(width: 2, color: Colors.black),
                      )
                  )
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const InstitutionDashboard()));
              },
              child: SizedBox(
                width: 200,
                height: 250,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 150,
                      height: 200,
                      child: ClipRect(
                        child: Image.asset('assets/Institution.png'),
                      ),
                    ),
                    const Text(
                      "Institution",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
