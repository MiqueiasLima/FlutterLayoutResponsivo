import 'package:flutter/material.dart';

class Web_app_bar_responsive_content extends StatelessWidget {
  const Web_app_bar_responsive_content({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(builder: (context, constraints) {
      return Row(
        children: <Widget>[
          Expanded(child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              border: Border.all(color: Colors.grey[600]),
            ),
            child: Row(
              children: <Widget>[
                IconButton(onPressed: () {}, icon: Icon(Icons.search)),
                Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Pesquise",
                        border: InputBorder.none,
                      ),
                    )
                )
              ],
            ),
          )
          ),
        ],
      );
    }));
  }
}
