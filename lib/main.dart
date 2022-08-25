import 'package:flutter/material.dart';
import 'package:search_assets/WelcomePage.dart';
// import 'package:passing_data/ToDoDetail.dart';
// import 'package:passing_data/Todo.dart';
// import 'package:passing_data/WelcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Form(),
    );
  }
}

class Form extends StatefulWidget {
  const Form({Key? key}) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<Form> {
  TextEditingController _state = TextEditingController();
  TextEditingController _district = TextEditingController();
  TextEditingController _stage = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Search Assets"),
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 50, 20, 10),
                child: TextField(
                  controller: _state,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'State'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  controller: _district,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'District'
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: TextField(
                  controller: _stage,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Stage'
                  ),
                ),
              ),
              ElevatedButton(onPressed: (){

                Navigator.of(context).push(MaterialPageRoute(builder: (context)=>WelcomePage(state: _state.text, district: _district.text, stage: _stage.text)));

              }, child: Text('Submit'))
            ],
          ),
        ),
      ),
    );
  }
}