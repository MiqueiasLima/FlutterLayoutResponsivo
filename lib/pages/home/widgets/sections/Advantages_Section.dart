import 'package:flutter/material.dart';

class Advantages_Sections extends StatelessWidget {
  const Advantages_Sections({Key key}) : super(key: key);

  @override
  Widget buildWidget(String title, String subtitle) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        Column(
          children: <Widget>[
            Text(
              "${title}",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "${subtitle}",
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return Wrap(
      children: <Widget>[
        buildWidget("titulo 1", "subtitulo1"),
        buildWidget("titulo 2", "subtitulo2"),
        buildWidget("titulo 3", "subtitulo3"),
      ],
    );
  }
}
