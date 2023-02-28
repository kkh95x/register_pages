import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:login_form/src/user_managment/presentaion/widgets/label_text.dart';
import 'package:login_form/src/user_managment/presentaion/widgets/text_fild.dart';

class registerPhonecomponent extends StatelessWidget {
  const registerPhonecomponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const LabelText(title: "User name"),
              CoustomTextFild(
                hint: "karim343",
                icon: Icons.person,
              
              ),
        LabelText(title: "Phone No."),
        Row(
          children: [
            Expanded(
              flex: 1,
              child:  CoustomTextFild(
                hint: "+0",
              
              
              ),),
              const SizedBox(width: 5,),
              Expanded(
                flex: 2,
                child:  CoustomTextFild(
                hint: "0967 567 658",
              
              
              ),)
          ],
        ),
      const LabelText(title: "Password"),
       CoustomTextFild(
                hint: "password",
                icon: Icons.mail,
              isPassword: true,
              ),
      ],
    );
  }
}