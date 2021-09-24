 import 'package:flutter/material.dart';

class bottomsheet extends StatelessWidget {
  String? image,name,description;
  bottomsheet( {this.image,this.name,this.description});
   Widget build(BuildContext context) {
     return Container(
        color: Colors.black87.withOpacity(1),
       child:Card(
         color: Colors.black87.withOpacity(1),
         elevation: 20,
        shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(2.0),
         ),
         child: ListView(
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:
               [

                 Column(
                   mainAxisAlignment:MainAxisAlignment.spaceAround,
                   children: [
                   Padding(
                     padding: const EdgeInsets.all(13.0),
                     child: ClipRRect(
                       borderRadius: BorderRadius.circular(20.0),
                       child:Image.asset("${image}",alignment: Alignment.topLeft,width:320,),
                     ),
                   ),
                 // ignore: prefer_const_constructors
                 SizedBox(height: 4),
                 // ignore: unnecessary_brace_in_string_interps, prefer_const_constructors
                 Text("${name}",textAlign: TextAlign.start,style: TextStyle(
                   fontSize: 15,
                   color: Colors.white,
                   fontWeight: FontWeight.bold,
                 ),),
               ],),
                 IconButton(
                     onPressed:(){
                       Navigator.pop(context);
                     }, icon:Icon(Icons.close , color:Colors.white,size: 30,)),

               ],
             ),
             SizedBox(height: 8),
             // ignore: unnecessary_brace_in_string_interps, prefer_const_constructors
             Padding(
               padding: const EdgeInsets.all(13.0),
               child: Text("${description}",textAlign: TextAlign.start,style: TextStyle(
                 fontSize: 15,
                 color: Colors.white,

               ),),
             ),
           ],
         ),
       ),
     );
   }
 }

