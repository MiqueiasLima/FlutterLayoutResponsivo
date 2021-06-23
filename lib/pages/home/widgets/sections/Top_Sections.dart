import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsividade/BreakPoints.dart';
import 'package:responsividade/pages/home/widgets/Custom_Search_Fill.dart';

class Top_Section extends StatelessWidget {
  const Top_Section({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context,constraints){
        final resolucao = constraints.maxWidth;

        if(resolucao >= 1200){
         return  AspectRatio(
            aspectRatio: 3.2,
            child: Stack(
              children: <Widget>[
                AspectRatio(aspectRatio: 3.2,child:Image.asset("../../../imagens/logo.png",fit: BoxFit.cover,),
                ),
                Positioned(
                    top: 50,
                    left: 50,
                    child: Card(
                      color: Colors.black,
                      elevation: 8,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: 400,
                        child: Column(
                          children: <Widget>[
                            Text("Aprenda Flutter com este curso",style: TextStyle(
                              fontSize: 35,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                            Padding(padding: EdgeInsets.only(top: 15)),
                            Text("Aprendendo Flutter com o profesor Daniel Ciolfi, "
                                "cursos por apenas R\$ 22.90, qualidade garantida",
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),),
                            Padding(padding: EdgeInsets.only(top: 15)),
                            Custom_Search_Fill()
                          ],
                        ),
                      ),
                    )
                )

              ],
            )

          );
        }

        if(resolucao >= breakPoints){
          return SizedBox(
            height: 320,
            child: Stack(
              children: [
                SizedBox(
                  width: double.infinity,
                  height: 250,
                  child: Image.asset("../../../imagens/logo.png",fit: BoxFit.cover,),
                ),
                Positioned(
                    top: 25,
                    left: 25,
                    child: Card(
                      color: Colors.black,
                      elevation: 8,
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: 400,
                        child: Column(
                          children: <Widget>[
                            Text("Aprenda Flutter com este curso",style: TextStyle(
                              fontSize: 40,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            Text("Aprendendo Flutter com o profesor Daniel Ciolfi, "
                                "cursos por apenas R\$ 22.90, qualidade garantida",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                              ),),
                            Padding(padding: EdgeInsets.only(top: 10)),
                            Custom_Search_Fill()
                          ],
                        ),
                      ),
                    )
                ),
              ],
            ),
          );
        }

        return Column(
          children: <Widget>[
            AspectRatio(aspectRatio: 3.2,
            child: Image.asset("../../../imagens/logo.png",fit: BoxFit.cover,),
            )
          ],
        );

    });
  }
}
