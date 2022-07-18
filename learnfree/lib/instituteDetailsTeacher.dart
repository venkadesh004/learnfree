import 'package:flutter/material.dart';
import 'package:learnfree/teacherDashboard.dart';

class InstituteDetailsNotVerified extends StatelessWidget {
  const InstituteDetailsNotVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(143, 255, 0, 1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Institution",
          style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.normal
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherDashboard()));
          },
          color: Colors.black,
          icon: const Icon(
              Icons.arrow_back
          ),
        ),
      ),
      body: const InstituteDataNotVerified(),
    );
  }
}

class InstituteDetails extends StatelessWidget {
  const InstituteDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(143, 255, 0, 1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Institution",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.normal
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const TeacherDashboard()));
          },
          color: Colors.black,
          icon: const Icon(
            Icons.arrow_back
          ),
        ),
      ),
      body: const InstituteData(),
    );
  }
}

class InstituteDataNotVerified extends StatelessWidget {
  const InstituteDataNotVerified({Key? key}) : super(key: key);

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
              child: Image.asset('assets/Institution.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(left: 20, right: 30),
            child: const InstituteDetailsTeacherNotVerified(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      const Color.fromRGBO(255, 170, 43, 1)
                  )
              ),
              onPressed: () {},
              child: SizedBox(
                width: 200,
                height: 80,
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Text(
                    "Apply Institution",
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

class InstituteData extends StatelessWidget {
  const InstituteData({Key? key}) : super(key: key);

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
              child: Image.asset('assets/Institution.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(left: 20, right: 30),
            child: const InstituteDetailsTeacher(),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                  const Color.fromRGBO(255, 170, 43, 1)
                )
              ),
              onPressed: () {},
              child: SizedBox(
                width: 200,
                height: 80,
                child: Container(
                  padding: const EdgeInsets.only(top: 20),
                  child: const Text(
                    "Apply Institution",
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

class InstituteDetailsTeacherNotVerified extends StatelessWidget {
  const InstituteDetailsTeacherNotVerified({Key? key}) : super(key: key);

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
                  "Institution Name",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  "Sevalayam",
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
                  "Address",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  "Sevalayam,\n Arapalayam, Madurai",
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

class InstituteDetailsTeacher extends StatelessWidget {
  const InstituteDetailsTeacher({Key? key}) : super(key: key);

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
                  "Institution Name",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  "Sevalayam",
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
                  "Address",
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.normal
                  ),
                ),
                Text(
                  "Sevalayam,\n Arapalayam, Madurai",
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

class InstituteDetailsAppliedNotVerified extends StatelessWidget {
  const InstituteDetailsAppliedNotVerified({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(143, 255, 0, 1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Sevalayam",
          style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.normal
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
          icon: const Icon(
              Icons.arrow_back
          ),
        ),
      ),
      body: const InstituteDataAppliedNotVerified(),
    );
  }
}


class InstituteDetailsApplied extends StatelessWidget {
  const InstituteDetailsApplied({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(143, 255, 0, 1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Sevalayam",
          style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.normal
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
          icon: const Icon(
              Icons.arrow_back
          ),
        ),
      ),
      body: const InstituteDataApplied(),
    );
  }
}

class InstituteDataAppliedNotVerified extends StatelessWidget {
  const InstituteDataAppliedNotVerified({Key? key}) : super(key: key);

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
              child: Image.asset('assets/Institution.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(left: 20, right: 30),
            child: const InstituteDetailsTeacherNotVerified(),
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

class InstituteDataApplied extends StatelessWidget {
  const InstituteDataApplied({Key? key}) : super(key: key);

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
              child: Image.asset('assets/Institution.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 30),
            padding: const EdgeInsets.only(left: 20, right: 30),
            child: const InstituteDetailsTeacher(),
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
