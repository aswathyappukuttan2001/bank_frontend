import 'dart:convert';

import 'package:banksapp/models/postmodels.dart';
import 'package:http/http.dart' as http;


class PostApiService
{
  Future<dynamic>sendData(
      String bank,place,branch,managername,
      )async{
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.43.77:3001/api/bank/add");
    var responce=await client.post(apiurl,
        headers: <String,String>
        {
          "Content-Type":"application/json;charset=UTF-8"
        },
        body: jsonEncode(<String,String>
        { "bank": bank,
          "Place": place,
          "branch":branch,
          "managername":managername,
        }
        )
    );
    if(responce.statusCode==200)
    {
      return json.decode(responce.body);

    }
    else
    {
      throw Exception("failed data send");
    }
  }

  Future<List<Post>> getPost() async{
    var client=http.Client();
    var apiurl=Uri.parse("http://192.168.43.77:3001/api/bank/viewall");
    var response=await client.get(apiurl);
    if(response.statusCode==200)
    {
      return postFromJson(response.body);
    }
    else
    {
      return[];
    }
  }
}