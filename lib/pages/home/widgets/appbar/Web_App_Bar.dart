import 'package:flutter/material.dart';
import 'package:responsividade/pages/home/widgets/appbar/Web_app_bar_responsive_content.dart';


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
          Web_app_bar_responsive_content(),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart)),
          const SizedBox(
            width: 32,
          ),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              onLongPress: (){},
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
                side: BorderSide(width: 2, color: Colors.white)
              ),
              child: Text("Fazer Login"),
            ),
          ),
          const SizedBox(width: 8,),
          SizedBox(
            height: 38,
            child: ElevatedButton(
              onLongPress: (){},
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  side: BorderSide(width: 2, color: Colors.white)
              ),
              child: Text("Cadastre-se"),
            ),
          )
        ],
      ),
    );
  }
}
