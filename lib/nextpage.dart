import 'package:flutter/material.dart';
class Nextscreen extends StatelessWidget {
  final String name,email,age,contact;

  const Nextscreen({super.key,
    required this.name,
    required this.email,
    required this.age,
    required this.contact,
  }
);

  @override
  Widget build(BuildContext context) {

    TextEditingController _name = TextEditingController(text: name);
    TextEditingController _email = TextEditingController(text: email);
    TextEditingController _age = TextEditingController(text: age);
    TextEditingController _contact_no = TextEditingController(text: contact);
    return Scaffold(
      appBar: AppBar(
        title: Text('nextpage'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.all(25),
              child: TextField(
                controller: _name,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Name',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: TextField(
                controller: _email,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: TextField(
                controller: _age,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Age',
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: TextField(
                controller: _contact_no,
                decoration: const InputDecoration(
                  border: InputBorder.none,
                  labelText: 'Contact_no',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
