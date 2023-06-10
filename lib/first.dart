import 'package:apidemo/second.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text("First Page"),),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {

              Navigator.pushNamed(context, "2nd",arguments: "Hello");
              Navigator.pushNamed(context, "2nd",arguments: 123);
              Navigator.pushNamed(context, "2nd",arguments: {"name":"test","contact":35678});
              Navigator.pushNamed(context, "2nd",arguments: [211,22,344,55,766]);
            },
            child: Text("Go to first page"),
          ),
          Container(
            height: 0.2.sh,
            width: 1.w,
            color: Colors.red,
          ),
          Container(
            height: 0.2.sh,
            width: 0.5.sw,
            color: Colors.yellow,
          ),
          Container(
            height: 0.2.sh,
            width: 0.5.sw,
            color: Colors.red,
          ),
          Container(
            height: 0.2.sh,
            width: 0.5.sw,
            color: Colors.yellow,
          ),
        ],
      ),
    );
  }
}
