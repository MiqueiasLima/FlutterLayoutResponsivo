import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsividade/pages/home/widgets/appbar/Mobile_app_bar.dart';
import 'package:responsividade/pages/home/widgets/appbar/Web_App_Bar.dart';
import 'package:responsividade/pages/home/widgets/sections/Advantages_Section.dart';
import 'package:responsividade/pages/home/widgets/sections/Top_Sections.dart';
import '../../BreakPoints.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints){
        return Scaffold(
          backgroundColor: Colors.black,
          appBar: constraints.maxWidth < breakPoints ? PreferredSize(child: Mobile_App_Bar(), preferredSize: Size(double.infinity,56)) :
          PreferredSize(child: Web_App_Bar(), preferredSize: Size(double.infinity,72)),
          drawer: constraints.maxWidth > breakPoints ? null : Drawer(),
          body: Align(
            alignment: Alignment.topCenter,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: 1400,

              ),
              child: ListView(
                children: <Widget>[
                  Top_Section(),
                  Advantages_Sections(),
                ],
              )
            ),
          ),
        );
    });
  }
}
