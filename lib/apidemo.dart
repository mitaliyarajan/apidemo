import 'dart:convert';
import 'package:apidemo/Controller.dart';
import 'package:apidemo/ProductList.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class apidemo extends StatefulWidget {
  const apidemo({Key? key}) : super(key: key);
  @override
  State<apidemo> createState() => _apidemoState();
}
class _apidemoState extends State<apidemo> {

  @override
  Widget build(BuildContext context) {
    Controller c=Provider.of(context);
    c.gethttp();

    return Scaffold(
      appBar: AppBar(title: Text("Api")),
      body: c.l.length!=0?ListView.builder(itemBuilder: (context, index) {
        Products p=Products.fromJson(c.l[index]);
        return ListTile(
          leading: Image.network("${p.thumbnail}"),
          title: Text("${p.brand}"),
          subtitle: Text("${p.title}"),
        );
      },
        itemCount: c.l.length,
      ):Center(
        child: CircularProgressIndicator(),
      )
    );
  }
}










