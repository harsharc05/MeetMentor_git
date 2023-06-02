import 'package:flutter/material.dart';

class StudentChatScreen extends StatelessWidget {
  const StudentChatScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC9C0FF),
      appBar: AppBar(
        backgroundColor: Color(0xFF150578),
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Profile Name',
              style: TextStyle(color: Colors.white),
            ),
            Text(
              'Online',
              style: TextStyle(color: Colors.green),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.person),
            color: Colors.white,
            onPressed: () {
              // Perform action
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Color(0xFFC9C0FF),
              // Chat messages widget
            ),
          ),
          Container(
            color: Color(0xFF150578),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Type here',
                      
                      border: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  color: Colors.white,
                  onPressed: () {
                    // Perform action
                  },
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.white,
                  onPressed: () {
                    // Perform send action
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
