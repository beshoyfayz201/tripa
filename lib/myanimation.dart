import 'package:simple_animations/simple_animations.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Outanima extends StatelessWidget {
 double delay;
 Widget child;
 Outanima(this.delay,this.child);
 // ignore: deprecated_member_use
 
  @override
  Widget build(BuildContext context) {
 // ignore: deprecated_member_use
 final MultiTrackTween tween=MultiTrackTween([Track("opacity").add(Duration(milliseconds: 900),
  Tween(begin: 0.0,end: 1.0)),
  
  // ignore: deprecated_member_use
  Track("translateY").add(Duration(milliseconds: 500),Tween(
    begin: 120.0,
    end:0.0,
  ),curve: Curves.easeIn),
  
  ]);


    // ignore: deprecated_member_use
    return ControlledAnimation(
     delay: Duration(milliseconds: (500*delay).round()),
     tween: tween,
     duration: tween.duration,
     child: child,
     builderWithChild: (context,child,animation)=>Opacity(opacity: animation["opacity"],
     child: Transform.translate(offset: Offset(animation["translateY"],0,
     ),
    child: child,
     ),),
      
       
      
    );
  }
}