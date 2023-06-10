import 'package:apidemo/first.dart';
import 'package:flutter/material.dart';

class second extends StatefulWidget {


  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {

    List str=ModalRoute.of(context)!.settings.arguments as List;

    return Scaffold(
      appBar: AppBar(title: Text("second page $str")),
      body: ElevatedButton(
        onPressed: () {

          Navigator.pushNamed(context, "1st");

        },
        child: Text("Go to first page"),
      ),

    );
  }
}
