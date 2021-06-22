import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class Web_app_bar_responsive_content extends StatelessWidget {
  const Web_app_bar_responsive_content({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(child: LayoutBuilder(builder: (context, constraints) {
      return Row(
        children: <Widget> [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey[100],
                border: Border.all(color: Colors.grey[600]),
              ),
              child: Row(
                children: <Widget>[
                  const SizedBox(
                    width: 2,
                  ),
                  IconButton(
                      color: Colors.grey[500],
                      onPressed: () {},
                      icon: Icon(Icons.search)),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Pesquise",
                        border: InputBorder.none,
                        isCollapsed: true,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          if(constraints.maxWidth >=400)...[
            SizedBox(width: 20,),
            ElevatedButton(onPressed: (){}, child: Text("Aprender"), style: ElevatedButton.styleFrom(
              onPrimary: Colors.white,
              primary: Colors.black,
            ),)
          ]
          ,
          if(constraints.maxWidth >= 500)...[
            SizedBox(
              width: 6,
            ),
            ElevatedButton(onPressed: (){}, child: Text("Flutter"),style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white
            ),)
          ]

        ],
      );
    }));
  }
}
