import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Glasscard extends StatelessWidget {
  const Glasscard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(//to keep the component in the center (Cliprrect means clip rounded rectangle vs cliprect means clip rectangle)
    borderRadius: BorderRadius.circular(12),
    
      child: Container(
        height: 250,
        width: 400,
       
    
        child: Stack(
        children: [
          
          BackdropFilter(filter: ImageFilter.blur(
            sigmaX: 5,
            sigmaY: 5,
          ),//to add blur to the component
          
          child: Container(),
            


          ),
        Container(// to add opacity and to make the card more visible
            decoration: BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topLeft, end:Alignment.bottomRight, colors: [Colors.white.withOpacity(0.5), Colors.black.withOpacity(0.5)]), 
            border: Border.all(color: Colors.deepPurple),
            borderRadius: BorderRadius.circular(12))
            
          ),

          Text("iowhadoiuh")
        ]),
      ),
    );
  }
}