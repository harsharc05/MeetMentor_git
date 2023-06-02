 import 'package:flutter/material.dart';
import 'package:meet_mentor_app/pages/stuprsnl_chat.dart';
import 'fachome_page.dart';
import 'login_page.dart';
 

class FacultyGroupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC9C0FF),
      appBar: AppBar(
        backgroundColor: Color(0xFFC9C0FF),
        iconTheme: IconThemeData(color: Colors.black),
        title: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF150578),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Groups',
                    hintStyle: TextStyle(color: Colors.white),
                    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
            IconButton(
              onPressed: () {
                // Add your onPressed logic here
              },
              icon: Icon(Icons.group_add, color: Colors.black),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => FacultyHomePage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF150578),
                ),
                child: Text('Chats'),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFF150578),
                ),
                child: Text('Groups'),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/profile_pic.png'),
                  ),
                  title: Text('Chat Name'),
                  subtitle: Text('Last message'),
                  onTap: () {
                    
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => StudentChatScreen()),
                      );
                  },
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF150578), // Set the background color
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white), // Set the color of the home icon
            label: '', // Empty label
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white), // Set the color of the profile icon
            label: '', // Empty label
          ),
        ],
         onTap: (index) {
          if (index == 0) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          }
          if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          }
         }),
    );
  }
}
