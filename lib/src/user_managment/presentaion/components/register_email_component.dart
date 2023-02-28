import 'package:flutter/material.dart';
import 'package:login_form/src/user_managment/presentaion/widgets/label_text.dart';
import 'package:login_form/src/user_managment/presentaion/widgets/text_fild.dart';

class RegisterEmailComponent extends StatelessWidget {
  const RegisterEmailComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        const LabelText(title: "Email/User name"),
              CoustomTextFild(
                hint: "mail",
                icon: Icons.mail,
              
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