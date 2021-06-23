import 'package:flutter/material.dart';

class Top_Section extends StatelessWidget {
  const Top_Section({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
        final resolucao = constraints.maxWidth;

        if(resolucao >= 1200){
         return  AspectRatio(
            aspectRatio: 3.2,
            child: Image.asset("../../../imagens/logo.png",fit: BoxFit.cover,),

          );
        }
        return Container();

    });
  }
}
