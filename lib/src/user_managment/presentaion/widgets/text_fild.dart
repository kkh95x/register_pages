import 'package:flutter/material.dart';

class CoustomTextFild extends StatefulWidget {
  CoustomTextFild(
      {super.key,
      required this.hint,
       this.icon,
      this.onChanged,
      this.isPassword});
  IconData? icon;
  String hint;
  void Function(String)? onChanged;
  bool? isPassword;

  @override
  State<CoustomTextFild> createState() => _CoustomTextFildState();
}

class _CoustomTextFildState extends State<CoustomTextFild> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(37, 140, 91, 255),
      ),
      child: TextField(
        obscureText: widget.isPassword ?? false,
        onChanged: widget.onChanged,
        decoration: InputDecoration(
            suffixIcon: widget.isPassword != null
                ? widget.isPassword!
                    ? IconButton(
                        onPressed: () {
                          widget.isPassword = !widget.isPassword!;
                          setState(() {
                            
                          });
                        },
                        icon: const Icon(Icons.remove_red_eye,
                        color:  Color.fromARGB(185, 140, 91, 255),))
                    : IconButton(
                        onPressed: () {
                            widget.isPassword = !widget.isPassword!;
                            setState(() {
                              
                            });
                        },
                        icon: const Icon(Icons.remove_red_eye_outlined,
                        color:  Color.fromARGB(185, 140, 91, 255),))
                : null,
            border: InputBorder.none,
            icon: Icon(
              widget.icon,
              color:                      const Color.fromARGB(141, 233, 30, 98),

            ),
            contentPadding:
                const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            hintText: widget.hint,
            hintStyle: Theme.of(context).textTheme.titleMedium),
      ),
    );
  }
}
