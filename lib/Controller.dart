import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
class Controller extends ChangeNotifier{

  List l=[];

  gethttp() async {
    var url = Uri.parse('https://dummyjson.com/products');
    var response = await http.post(url,body: [{}]);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    Map map=jsonDecode(response.body);
    l=map['products'];
   notifyListeners();

  }
}