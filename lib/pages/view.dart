import 'package:banksapp/models/postmodels.dart';
import 'package:banksapp/service/postservice.dart';
import 'package:flutter/material.dart';

class view extends StatefulWidget {
  const view({super.key});

  @override
  State<view> createState() => _viewState();
}

class _viewState extends State<view> {
  Future<List<Post>>? data;
  void initState()
  {
    super.initState();
    data=PostApiService().getPost();
  }
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("VIEW"),
          backgroundColor: Colors.cyan,
        ),
        body: FutureBuilder(
            future: data,
            builder: (context,snapshot)
            {
              List<Post>?data=snapshot.data;
              if(snapshot.hasData && snapshot.data!.isNotEmpty)
              {
                return ListView.builder(
                    itemCount:snapshot.data!.length,
                    itemBuilder:(value,index)
                    {
                      return Card(
                          child: Column(
                            children: [

                              ListTile(
                                //leading: Icon(Icons.account_box_rounded),
                                title: Text("bank "+snapshot.data![index].bank.toString()),
                                subtitle:Text("place "+snapshot.data![index].place.toString()+'\n'+ "branch "+snapshot.data![index].branch.toString()+'\n'+ "managername "+snapshot.data![index].managername.toString()
                                ),
                                leading: CircleAvatar(
                                  child: Text(snapshot.data![index].bank.toString()[0]),
                                ),
                              ),
                            ],
                          )
                      );
                    }
                );
              }
              else{
                return Text(("Fetching data from internet"));
              }
            }
        ),
      ),
    );
  }
}

