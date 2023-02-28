import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Button extends StatelessWidget {
  const Button({super.key, this.onTap,required this.name});
 final void Function()? onTap;
 final String name;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap:onTap ,
            borderRadius: BorderRadius.circular(30),
      child: Container(
        padding:const EdgeInsets.symmetric(vertical:20),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            gradient:  const LinearGradient(
              
              colors: [
              Color.fromARGB(141, 233, 30, 98),
              Color.fromARGB(185, 140, 91, 255),
            ])),
        child: Text(name,style: Theme.of(context).textTheme.titleMedium?.copyWith(color:Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
      ),
    );
  }
}
