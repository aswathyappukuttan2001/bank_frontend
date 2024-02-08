import 'package:banksapp/pages/add.dart';
import 'package:banksapp/pages/view.dart';
import 'package:flutter/material.dart';

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  State<menu> createState() => _menuState();
}

class _menuState extends State<menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BANK APP"),
        backgroundColor: Colors.cyan,
      ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Colors.blueGrey.withOpacity(0.4),
                  Colors.pink.withOpacity(0.4),
                ]
            )
        ),
        width: double.infinity,
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.blue,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>add()));
                  }, child: Text("ADD")),
            ),
            SizedBox(height: 10,),
            SizedBox(
              height: 50,
              width: 200,
              child: ElevatedButton(
                  style:ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                      foregroundColor: Colors.blue,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      )
                  ),onPressed: ()
              {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>view()));
              }, child: Text("VIEW")),
            )
          ],
        ),
      ),
    );
  }
}
