import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsividade/pages/home/widgets/appbar/Mobile_app_bar.dart';
import 'package:responsividade/pages/home/widgets/appbar/Web_App_Bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
        return Scaffold(
          appBar: constraints.maxWidth < 800 ? PreferredSize(child: Mobile_App_Bar(), preferredSize: Size(double.infinity,56)) :
          PreferredSize(child: Web_App_Bar(), preferredSize: Size(double.infinity,72)),
          drawer: Drawer(),
        );
    });
  }
}
