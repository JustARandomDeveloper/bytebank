
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart';

// void findAll() async{
//   final Response response = await get(Uri.http('http://192.168.68.114:8080', 'transactions'));//192.168.68.114:8080/transactions');
//   print(response.body);
// }
  
// Future<Post> findthishit() async {

//   final response = await http.get('http://192.168.68.114:8080/transactions');
//   // return http.get(Uri.parse('http://192.168.68.114:8080/transactions'));
//   // print(response);
//   if (response.statusCode == 200){
//     return Post.fromJson(json.decode(response.body));
//   } else{
//     throw Exception("Failed to load the post, try again later");
//   }
// }

// class Post{
//   final int userId;
//   final int id;
//   final String title;
//   final String body;
  
//   Post({this.userId, this.id, this.title, this.body});

// }

void findthishit() async{
  final url = 'http://192.168.68.114:8080/transactions';
  final response = await get(Uri.parse(url));
  final jsonData = jsonDecode(response.body) as List;
  print(jsonData);
}

