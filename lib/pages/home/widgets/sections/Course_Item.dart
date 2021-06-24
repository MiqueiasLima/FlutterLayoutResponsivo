import 'package:flutter/material.dart';


class Course_Item extends StatelessWidget {
  const Course_Item({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Image.asset("../../../imagens/logo.png",
        fit: BoxFit.fitWidth,),
        const SizedBox(height: 4,),
        
        Flexible(child: Text("Criação de Apps Android IOS com Flutter - crie 16 apps",
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
              fontSize: 15),
        ) ),
        Text("Daniel Ciolfi",style: TextStyle(color: Colors.grey),),
        Text("R\$ 22.90",style: TextStyle(color: Colors.white),),
      ],
    );
  }
}
