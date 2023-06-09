import 'package:flutter/material.dart';
import 'nextpage.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: Homepage(),
    );
  }
}
class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final TextEditingController _name = TextEditingController();
  final TextEditingController _email = TextEditingController();
  final TextEditingController _age = TextEditingController();
  final TextEditingController _contact_no = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sharing data between pages',
        style: TextStyle(fontSize: 18),
        ),

      ),
      body: SingleChildScrollView(
        reverse: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(25),

              child: TextField(
                controller: _name,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter name",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _email,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter email",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _age,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter age",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: TextField(
                controller: _contact_no,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Enter Contact no",
                ),
              ),
            ),
            ElevatedButton(
                onPressed:(){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (context)=>Nextscreen(
                           name : _name.text,
                           email : _email.text,
                          age : _age.text,
                          contact:_contact_no.text,
                    )),
                  );
                },
                child: const Text("send")
            ),
            Padding(padding:EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)),
          ],
        ),

      ),
    );
  }
}

