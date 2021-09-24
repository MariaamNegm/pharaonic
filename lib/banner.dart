import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';
import 'package:animated_widgets/animated_widgets.dart';
class banner extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return PlayAnimation<double>(
      tween: Tween(begin: 100.0, end:  1000.0),
      duration: const Duration(seconds: 5),
      delay: const Duration(seconds: 1),
      curve: Curves.easeOut,
      builder: (context, child, value) {
        return Container(
          width: value,
          child:Image.asset("assets/back2.jpg",fit:BoxFit.cover,),
          );
      },
    );
  }
}
