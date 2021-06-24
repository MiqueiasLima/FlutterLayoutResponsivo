import 'package:flutter/material.dart';

class Courses_Sections extends StatelessWidget {
  const Courses_Sections({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 20,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 5,mainAxisSpacing: 5),
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context,index){
        return Container(
          color: Colors.blue,
        );
      },
    );
  }
}
