import 'package:flutter/material.dart';

import 'login_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove the debug banner
      home: Scaffold(
        backgroundColor: Color(0xFFC9C0FF),
        body: Stack(
          alignment: Alignment.center,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                margin: EdgeInsets.only(top: 130, right: 5, left: 65, bottom: 1),
                child: Image.asset(
                  'assets/images/logo.png',
                  width: 250,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 160, right: 30, left: 30, bottom: 1),
              child: Image.asset(
                'assets/images/home_pic.png',
                width: 400,
                height: 400,
                fit: BoxFit.contain,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 70),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF150578) ,
                    minimumSize: Size(297, 46),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Get started',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
