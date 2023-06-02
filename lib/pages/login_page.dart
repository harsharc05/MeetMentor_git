import 'package:flutter/material.dart';
import 'package:meet_mentor_app/pages/home_page.dart';
import 'student_login.dart';
import 'faculty_login.dart';

class LoginPage extends StatelessWidget {

@override
Widget build(BuildContext context) {
  return Scaffold(
      backgroundColor: Color(0xFFC9C0FF),
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(height: 140),
              SizedBox(height: 50), // Added SizedBox to create space between the two widgets
              Align(
                alignment: AlignmentDirectional(-0.05, -0.1),
                child: Text(
                  'Welcome Back',
                  style: TextStyle(
                    fontFamily: 'PottaOne',
                    fontSize: 32,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
          Positioned(
            top: 45,
            left: 5,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                icon: Image.asset(
                  'assets/images/back_button.png',
                  width: 40,
                  height: 40,
                ),
                onPressed: () {
                 Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),);
                },
              ),
            ),
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentLoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF150578),
                      minimumSize: Size(300, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.all(16.0), // Added padding for resizing
                    ),
                    child: Text(
                      'Student Login',
                      style: TextStyle(
                        fontFamily: 'PatuaOne',
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),
                  SizedBox(height: 35),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => FacultyLoginPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF150578),
                      minimumSize: Size(300, 70),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      padding: EdgeInsets.all(16.0), // Added padding for resizing
                    ),
                    child: Text(
                      'Faculty Login',
                      style: TextStyle(
                        fontFamily: 'PatuaOne',
                        fontWeight: FontWeight.bold,
                        fontSize: 32,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
