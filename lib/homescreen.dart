import 'package:flutter/material.dart';
import 'package:pharaonic/side.dart';

import 'banner.dart';
import 'kingslist.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Container(

          color: Colors.black87,
          child:Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Expanded(
                flex: 4,
                  child: Container(
                    color: Colors.black87,
                    child:side(),

              )),
              Expanded(
                  flex: 8,
                  child: Container(
                    color: Colors.black87.withOpacity(1),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Expanded(
                            flex: 4,
                            child: Container(
                              height: 200,
                              color: Colors.black87.withOpacity(1),
                              child:Stack(
                                children: [
                                  banner(),
                                  Container(
                                    alignment: Alignment.bottomLeft,
                                    padding: EdgeInsets.all(10),
                                    // ignore: prefer_const_constructors
                                    child: Text("Places To Visit In Egypt",style: TextStyle(
                                      fontSize: 40,
                                      color:Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),),
                                  )
                                ],
                              )
                            )),
                        Expanded(
                            flex: 5,
                                child:kingslist(),
                            ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
