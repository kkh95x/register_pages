
import 'package:flutter/material.dart';
import 'package:login_form/src/user_managment/presentaion/components/register_email_component.dart';
import 'package:login_form/src/user_managment/presentaion/components/register_phone_component.dart';
import 'package:login_form/src/user_managment/presentaion/widgets/button.dart';
import 'package:login_form/src/user_managment/presentaion/widgets/meduim_title_text.dart';
import 'package:login_form/src/user_managment/presentaion/widgets/title_text.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
    bool isEmailForm=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0.0,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration:const BoxDecoration(
                    shape: BoxShape.circle,
                    color:   Color.fromARGB(37, 140, 91, 255),
      ),
      child:const Icon(Icons.arrow_back_ios,color: Color.fromARGB(185, 140, 91, 255),size: 20,),
                  ),

                const SizedBox(
                  height: 20,
                ),
                const TitleText(title: "Creat new account"),
                const SizedBox(
                  height: 20,
                ),
                const MeduimTitleText(
                    title:
                        "Please fill the form to continue!"),
        getTapBarView (),
        isEmailForm?const RegisterEmailComponent():const registerPhonecomponent(),
      SizedBox(height: 30,),
                Button(name: "Register",onTap: () {
        
                },),
        
              ],
            ),
          ),
        ));
 }

  Widget getTapBarView() {
    return Container(
      height: 60,
      width: double.infinity,
      margin: const EdgeInsets.symmetric( vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(37, 140, 91, 255),
      ),
      child: Row(
        children: [
          Expanded(
              child: InkWell(
                onTap:isEmailForm?null: () {
              isEmailForm = !isEmailForm;
              setState(() {
                
              });
            },
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          decoration: isEmailForm
                  ?  BoxDecoration(
                            borderRadius: BorderRadius.circular(10),

                      gradient: const LinearGradient(colors: [
                      Color.fromARGB(141, 233, 30, 98),
                      Color.fromARGB(185, 140, 91, 255),
                    ]))
                  : null,
                          child: Text(
                "By Email",
                style: TextStyle(
                    color: isEmailForm ? Colors.white : const Color.fromARGB(59, 0, 0, 0),
                    fontWeight: FontWeight.bold,fontSize: 16),
                          ),
                        ),
              ))
        ,Expanded(
            child: InkWell(
              onTap: isEmailForm?() {
              isEmailForm = !isEmailForm;
              setState(() {
                
              });
            }:null,
              child: Container(
                      alignment: Alignment.center,
                      decoration: !isEmailForm
                ?  BoxDecoration(
                          borderRadius: BorderRadius.circular(10),

                    gradient: const LinearGradient(colors: [
                    Color.fromARGB(141, 233, 30, 98),
                    Color.fromARGB(185, 140, 91, 255),
                  ]))
                : null,
                      child: Text(
              "By Number Phone",
              style: TextStyle(
                  color: !isEmailForm ? Colors.white : const Color.fromARGB(59, 0, 0, 0),
                  fontWeight: FontWeight.bold,fontSize: 16),
                      ),
                    ),
            ))
       
        ],
      ),
    );
  }
}