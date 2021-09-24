import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class side extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SafeArea(
      child: Drawer(
        elevation:15.6,
           child:
            // ignore: avoid_unnecessary_containers
            Container(
              color: Colors.black87.withOpacity(1),
              child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  // ignore: avoid_unnecessary_containers
                  Container(
                       child: Column(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         // ignore: prefer_const_literals_to_create_immutables
                         children: [
                           // ignore: prefer_const_constructors, avoid_unnecessary_containers
                           Padding(
                             padding: const EdgeInsets.all(8.0),
                             // ignore: avoid_unnecessary_containers
                             child: Card(
                               color: Colors.transparent,
                               shadowColor:Colors.amber ,
                               elevation: 26,
                               shape: RoundedRectangleBorder(
                                 borderRadius: BorderRadius.circular(120.0),
            ),
                               child: CircleAvatar(
                                 radius: 100.0,
                                 backgroundColor: Colors.amber.withOpacity(1),
                                 // ignore: prefer_const_constructors
                                 backgroundImage:AssetImage("assets/avatar.jpg"),

                               ),
                             ),
                           ),
                           // ignore: prefer_const_constructors, avoid_unnecessary_containers
                           Padding(
                             padding: const EdgeInsets.all(5.0),
                             child: Card(
                                 color: Colors.transparent,
                                 elevation: 30,
                                 child: Text("Helena Oscar",style: TextStyle(fontSize: 20 ,color: Colors.white ,fontWeight: FontWeight.w600),)),
                           ),
                           // ignore: prefer_const_constructors
                           Padding(
                             padding: const EdgeInsets.all(5.0),
                             child: Card(
                                 color: Colors.transparent,
                                 elevation: 30,
                                 child: Text("Canadian",style: TextStyle(fontSize: 20 ,color: Colors.white ,fontWeight: FontWeight.w600),)),
                           ),

                         ],
                       ),
                  ),
                  // ignore: prefer_const_constructors
                  Container(
                    height: 12,
                    width: 450,
                    child: Card(
                      shadowColor: Colors.amber,
                      color: Colors.transparent,
                      elevation:8,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      // ignore: prefer_const_constructors

                        child: Divider(color: Colors.white,thickness:4,height: 5,),

                    ),
                  ),
                  Expanded(child:  Column(
                    children: [
                      Column(
                        children:[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                   Text("Places willing to visit:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20 ),)
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("assets/torous.png",width: 50,),
                                Text("Luxor's Karnak Temple",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15,fontStyle:FontStyle.italic),)
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("assets/torous.png",width: 50,),
                                Text("Cruising the Nile",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15,fontStyle:FontStyle.italic),)
                              ],
                            ),
                          ),

                           ],
                      ),
                      Container(
                        height: 12,
                        width: 450,
                        child: Card(
                          shadowColor: Colors.amber,
                          color: Colors.transparent,
                          elevation:8,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          // ignore: prefer_const_constructors

                          child: Divider(color: Colors.white,thickness:4,height: 5,),

                        ),
                      ),
                      Column(
                        children:[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Places Alraedy Visited:",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 20 ),)
                              ],
                            ),
                          ),
                          // ignore: prefer_const_constructors
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset("assets/torous.png",width: 50,),
                                Text("Saqqara",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 15,fontStyle:FontStyle.italic),)
                              ],
                            ),
                          ),




                        ],
                      ),

                    ],
                  )),
                ],
              ),
            ),
      ),
    );
  }
}
