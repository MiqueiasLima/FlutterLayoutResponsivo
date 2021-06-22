import 'package:flutter/material.dart';


class Web_App_Bar extends StatelessWidget {
  const Web_App_Bar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      toolbarHeight: 72,
      title: Row(
        children: <Widget>[
          Text("Flutter"),
           const SizedBox(width: 32),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart))
        ],
      ),
    );
  }
}
