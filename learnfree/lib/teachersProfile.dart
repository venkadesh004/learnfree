import 'package:flutter/material.dart';
import 'package:learnfree/teacherDashboard.dart';

class TeacherProfileNotVerified extends StatelessWidget {
  const TeacherProfileNotVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(143, 255, 0, 1),
        title: const Text(
          "Venkadesh",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.normal,
              color: Colors.black
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherDashboard()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: const ProfileTeacherBlocksNotVerified(),
    );
  }
}


class TeacherProfile extends StatelessWidget {
  const TeacherProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromRGBO(143, 255, 0, 1),
        title: const Text(
          "Venkadesh",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.black
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherDashboard()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: const ProfileTeacherBlocks(),
    );
  }
}
class ProfileTeacherBlocksNotVerified extends StatelessWidget {
  const ProfileTeacherBlocksNotVerified({Key? key}) : super(key: key);

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
            margin: const EdgeInsets.only(top: 120),
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


class ProfileTeacherBlocks extends StatelessWidget {
  const ProfileTeacherBlocks({Key? key}) : super(key: key);

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
            margin: const EdgeInsets.only(top: 120),
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

class TeacherDetails extends StatelessWidget {
  const TeacherDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 2),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Teacher Name",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  "S Venkadesh",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  <Widget>[
                const Text(
                  "User Verified",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: ClipRect(
                    child: Image.asset('assets/verification.png'),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Phone Number",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  "8610475929",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  "Interested Subjects",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  "Science, Maths, \nComputer Science, \nPython",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.end,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TeacherDetailsNotVerified extends StatelessWidget {
  const TeacherDetailsNotVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 2),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Teacher Name",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  "S Venkadesh",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children:  const <Widget>[
                Text(
                  "User Verified",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                ),
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Text(
                    "No",
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300
                    ),
                  )
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const <Widget>[
                Text(
                  "Phone Number",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  "8610475929",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w300
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                Text(
                  "Interested Subjects",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  "Science, Maths, \nComputer Science, \nPython",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                  ),
                  textAlign: TextAlign.end,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

