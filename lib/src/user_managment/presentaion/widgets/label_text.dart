import 'package:flutter/material.dart';


class LabelText extends StatelessWidget {
  const LabelText({super.key,required this.title});
  final  String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30,bottom: 10),
      child: Text(title,style:Theme.of(context).textTheme.titleLarge?.copyWith(fontSize:18,fontWeight: FontWeight.bold,color: Color.fromARGB(108, 0, 0, 0) ) ,),
    );
  }
}
