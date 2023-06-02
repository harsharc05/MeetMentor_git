import 'package:flutter/material.dart';

class CreateGroupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC9C0FF),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 50),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Create New Group',
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle create group button press
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    backgroundColor: Color(0xFF150578),
                  ),
                  child: Text(
                    'CREATE',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Group Name',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'NotoSansThaiUI',
              ),
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Color(0xFFC9C0FF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: ' ',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 1,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'Group Description',
              style: TextStyle(
                fontSize: 18,
                fontFamily: 'NotoSansThaiUI',
              ),
            ),
          ),
          SizedBox(height: 3),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Color(0xFFC9C0FF),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: ' ',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(height: 1),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              height: 1,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              height: 40,
              margin: EdgeInsets.only(bottom: 16.0),
              decoration: BoxDecoration(
                color: Color(0xFF150578),
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search,color: Colors.white,),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
