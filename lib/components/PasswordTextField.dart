import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({
    Key? key, required this.controller,
  }) : super(key: key);
  final TextEditingController controller;

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isObscure = true;
  void togglePasswordObscure() {
    setState(() {
      isObscure = !isObscure;
    });
  }
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: isObscure,
      obscuringCharacter: "*",
      decoration: InputDecoration(
        prefixIcon: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Icon(Icons.lock),
        ),
        suffixIcon: IconButton(icon: const Icon(Icons.remove_red_eye), onPressed: () => togglePasswordObscure(),),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0)),
        labelText: "Password",
        labelStyle: Theme.of(context).typography.black.bodyText1,
        floatingLabelStyle: Theme.of(context).textTheme.titleLarge,
        hintText: "Enter your password",
        hintStyle: Theme.of(context).textTheme.bodyText2,
        // alignLabelWithHint: true,
      ),
    );
  }
}
