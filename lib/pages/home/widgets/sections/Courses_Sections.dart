import 'package:flutter/material.dart';
import 'package:responsividade/BreakPoints.dart';
import 'package:responsividade/pages/home/widgets/sections/Course_Item.dart';

class Courses_Sections extends StatelessWidget {
  const Courses_Sections({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraints) {
      return GridView.builder(
        padding: EdgeInsets.symmetric(vertical: 16,horizontal: constraints.maxWidth >= tabletBreakPoint ? 0 : 16),
        itemCount: 20,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300, crossAxisSpacing: 15, mainAxisSpacing: 15),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Course_Item(
          );
        },
      );
    }
    );
  }
}
