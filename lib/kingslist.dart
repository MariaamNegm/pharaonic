import 'package:flutter/material.dart';

import 'kings.dart';
class kingslist extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
        child:ListView(
          scrollDirection: Axis.vertical,
          // ignore: prefer_const_literals_to_create_immutables
              children: [
                // ignore: prefer_const_constructors
                GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: demokings.length,
                    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount (crossAxisCount: 3),
                    itemBuilder:(context,index)=>kingscard(k1: demokings[index]))
              ],
        ),

    );
  }
}
class kingscard extends StatelessWidget {
  kings? k1;
  kingscard({this.k1});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: GestureDetector(
          onTap:(){
            showModalBottomSheet(context: context,
                builder: (BuildContext context)
                {
                  return  k1!.b1;
                });
          },
          // ignore: prefer_const_constructors
            child:Container(
              width:20,
              height:10,
              child: Padding(
                padding: const EdgeInsets.all(7.0),
                  child: Card(
                    color:Colors.black87.withOpacity(1),
                    elevation:10,
                    shadowColor:Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(90.0),
                    ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child:Image.asset("${k1!.image}",alignment: Alignment.topLeft,width:190,),
                            ),
                            SizedBox(height: 15),
                            Text("${k1!.name}",textAlign: TextAlign.center,style: TextStyle(
                              color: Colors.white,fontSize: 17,
                            ),)
                          ],
                        ),

                  ),

              ),
            ),


        ),
      ),
    );
  }
}
