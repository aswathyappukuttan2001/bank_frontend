import 'package:banksapp/service/postservice.dart';
import 'package:flutter/material.dart';
class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  String Bank = "",
     Place = "",
      Branch = "",
      Managername = "";

  final TextEditingController bank = new TextEditingController();
  final TextEditingController place = new TextEditingController();
  final TextEditingController branch = new TextEditingController();
  final TextEditingController managername = new TextEditingController();

  void sendbutton() async {
    final response = await PostApiService().sendData(bank.text,
        place.text,
        branch.text,
        managername.text);
    if (response['status'] == 'success') {
      print("successfully add");
    }
    else {
      print("error");
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ADD PAGE"),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.blueGrey.withOpacity(0.4),
                      Colors.pink.withOpacity(0.4),
                    ]
                )
            ),
            child: Column(
              children: [
                TextField(
                  controller: bank,
                  decoration: InputDecoration(
                    labelText: ("bank name"), hintText: ("enter the name"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: place,
                  decoration: InputDecoration(
                    labelText: ("place"), hintText: ("enter the place"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: branch,
                  decoration: InputDecoration(
                    labelText: ("branch"), hintText: ("enter the branch"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: managername,
                  decoration: InputDecoration(
                    labelText: ("managername"), hintText: ("enter the managername"),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                        foregroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.zero,
                        )
                    ), onPressed: () {
                  sendbutton();
                }, child: Text("ADD"))


              ],
            ),
          ),
        ),
      ),
    );
  }
}

