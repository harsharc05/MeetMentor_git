 import 'package:flutter/material.dart';
import 'package:meet_mentor_app/pages/cregroup_page.dart';
import 'student_profile.dart';
import 'stugroup_page.dart';
import 'login_page.dart';
import 'stuprsnl_chat.dart';

class FacultyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC9C0FF),
      body: SafeArea(
        child: Column(
          
          children: [
            SizedBox(height: 30),
            Container(
              
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: [
                  
                  SizedBox(width: 15),
                  Expanded(
                    child: Container(
                      height: 39,
                      decoration: BoxDecoration(
                        
                        color: Color(0xFF150578),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        children: [
                          SizedBox(width: 20 ),
                          Icon(Icons.search, color: Colors.white),
                          SizedBox(width: 15),
                          Expanded(
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Search Mentee',
                                hintStyle: TextStyle(color: Colors.white,fontFamily: 'Poppins',fontSize: 20),
                                border: InputBorder.none,
                                
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  IconButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CreateGroupScreen()),);
                    },
                    icon: Icon(Icons.group_add, color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF150578),
                  ),
                  child: Text('Chats'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => StudentGroupPage()));
                  },
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF150578),
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.white),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.white),
            label: '',
          ),
        ],
        onTap: (index) {
          if (index == 0) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
          }
          if (index == 1) {
            Navigator.push(context, MaterialPageRoute(builder: (context) => StudentProfilePage()));
          }
        },
      ),
    );
  }
}
