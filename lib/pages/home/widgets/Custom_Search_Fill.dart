import 'package:flutter/material.dart';

class Custom_Search_Fill extends StatelessWidget {
  const Custom_Search_Fill({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: Colors.blue,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
        ),
        hintStyle: TextStyle(color: Colors.white),
        hintText: "Digite alguma coisa aqui",
        suffixIcon: IconButton(
          icon: Icon(Icons.search),
          color: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}
