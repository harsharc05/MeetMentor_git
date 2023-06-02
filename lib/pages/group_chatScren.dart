 import 'package:flutter/material.dart';





class GroupChatScreen extends StatelessWidget {
   GroupChatScreen({super.key, required String groupName, required String groupDescription, required List<String> selectedContacts});
  
  get groupName => String;
  get selectedContacts => null;
  get groupDescription => null;

   get name async => groupName;
   get contacts async => selectedContacts;
   get description async => groupDescription;
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC9C0FF),
      appBar: AppBar(
        backgroundColor: Color(0xFF150578),
        iconTheme: IconThemeData(color: Colors.black),
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
              name,
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
            color: Colors.black,
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
            color: Colors.white,
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
                  color: Colors.black,
                  onPressed: () {
                    // Perform action
                  },
                ),
                IconButton(
                  icon: Icon(Icons.mic),
                  color: Colors.black,
                  onPressed: () {
                    // Perform action
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