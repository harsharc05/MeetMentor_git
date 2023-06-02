import 'package:flutter/material.dart';

import 'group_chatScren.dart';

class GroupChatPage extends StatefulWidget {
  @override
  _GroupChatPageState createState() => _GroupChatPageState();
}

class _GroupChatPageState extends State<GroupChatPage> {
  List<String> selectedContacts = [];
  String groupName = '';
  String groupDescription = '';

  // Dummy contacts list for demonstration
  List<String> contacts = [
    'Contact 1',
    'Contact 2',
    'Contact 3',
    'Contact 4',
    'Contact 5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Create Group Chat'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Group Name:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    groupName = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Text(
                'Group Description:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              TextFormField(
                onChanged: (value) {
                  setState(() {
                    groupDescription = value;
                  });
                },
              ),
              SizedBox(height: 16.0),
              Text(
                'Selected Contacts:',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 8.0),
              Wrap(
                children: contacts.map((contact) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: FilterChip(
                      label: Text(contact),
                      selected: selectedContacts.contains(contact),
                      onSelected: (bool selected) {
                        setState(() {
                          if (selected) {
                            selectedContacts.add(contact);
                          } else {
                            selectedContacts.remove(contact);
                          }
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Start a new group chat with selected contacts and group information
                  startGroupChat();
                },
                child: Text('Start Group Chat'),
              ),
            ],
          ),
        ),
      ),
    );
  }

void startGroupChat() {
  if (groupName.isEmpty || groupDescription.isEmpty) {
    // Validate group name and description before starting the group chat
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Validation Error'),
          content: Text('Please enter a group name and description.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
    return;
  }

  if (selectedContacts.isEmpty) {
    // Check if at least one contact is selected
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Validation Error'),
          content: Text('Please select at least one contact.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
    return;
  }

  // Perform the actual group chat creation or navigation to the chat screen
  // Replace the code below with your own implementation
  // Example: Navigate to the group chat screen passing the selected contacts and group information
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => GroupChatScreen(
        groupName: groupName,
        groupDescription: groupDescription,
        selectedContacts: selectedContacts,
      ),
    ),
  );
}
  
}

void main() {
  runApp(MaterialApp(
    home: GroupChatPage(),
  ));
}
