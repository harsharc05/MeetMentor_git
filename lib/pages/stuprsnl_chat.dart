import 'dart:io';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
//import 'package:audioplayers/audioplayers.dart';


class StudentChatScreen extends StatefulWidget {
  StudentChatScreen({Key? key});

  @override
  State<StudentChatScreen> createState() => _StudentChatScreenState();
}

class _StudentChatScreenState extends State<StudentChatScreen> {
  late File? _image = null;
  final TextEditingController _messageController = TextEditingController();
  List<String> _messages = [];

  Future<void> getImage(bool isCamera) async {
    final imagePicker = ImagePicker();
    final source = isCamera ? ImageSource.camera : ImageSource.gallery;

    final pickedImage = await imagePicker.pickImage(source: source);
    if (pickedImage != null) {
      setState(() {
        _image = File(pickedImage.path);
      });
    }
  }

  void _sendMessage() {
    final message = _messageController.text.trim();
    if (message.isNotEmpty) {
      setState(() {
        _messages.add(message);
        _messageController.clear();
      });
    }
  }

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
              child: ListView.builder(
                itemCount: _messages.length,
                itemBuilder: (context, index) {
                  final message = _messages[index];
                  return Align(
                    alignment: Alignment.centerRight,
                    child: Flexible(
                      child: Container(
                        margin: EdgeInsets.all(8),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Color(0xFF150578),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          message,
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Container(
            color: Color(0xFF150578),
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    style: TextStyle(color: Colors.white),
                    controller: _messageController,
                    decoration: InputDecoration(
                      hintText: 'Type here',
                      border: InputBorder.none,
                      hintStyle: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.camera_alt),
                  color: Colors.white,
                  onPressed: () {
                    getImage(true);
                  },
                ),
                IconButton(
  icon: Icon(Icons.mic),
  color: Colors.white,
  onPressed: () {
    // Implement audio recording functionality
  },
),

                IconButton(
                  icon: Icon(Icons.insert_drive_file),
                  color: Colors.white,
                  onPressed: () {
                    getImage(false);
                  },
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  color: Colors.white,
                  onPressed: _sendMessage,
                ),
                if (_image != null)
                  Image.file(
                    _image!,
                    height: 300.0,
                    width: 300.0,
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
