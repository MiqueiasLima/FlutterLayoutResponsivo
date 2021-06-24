import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Advantages_Sections extends StatelessWidget {
  const Advantages_Sections({Key key}) : super(key: key);

  @override
  Widget buildWidget(String title, String subtitle) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Icon(
          Icons.star,
          color: Colors.white,
          size: 50,
        ),
        SizedBox(
          width: 8,
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
    return Container(
      padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
      decoration: BoxDecoration(border: Border(bottom: BorderSide(color: Colors.white))),
      child: Wrap(
        runSpacing: 12,
        spacing: 8,
        alignment: WrapAlignment.spaceEvenly,
        children: <Widget>[
          buildWidget("+45000 alunos", "Didática garantida"),
          buildWidget("+45000 alunos", "Didática garantida"),
          buildWidget("+45000 alunos", "Didática garantida"),
        ],
      ),
    );
  }
}
