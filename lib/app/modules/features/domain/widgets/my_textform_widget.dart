import 'package:flutter/material.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField(
      {super.key,
      required this.textEditingController,
      required this.focusNode,
      required this.myTextInputAction,
      required this.labelText,
      required this.prefexIcon,
      this.suffexIcon,
      this.togglePassword,
      required this.obescureText,
      required this.onChanged,
      this.validator});
  final TextEditingController textEditingController;
  final FocusNode focusNode;
  final TextInputAction myTextInputAction;
  final String labelText;
  final Icon prefexIcon;
  final Icon? suffexIcon;
  final Function()? togglePassword;
  final bool obescureText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      focusNode: focusNode,
      textInputAction: myTextInputAction,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        label: Text(labelText),
        prefixIcon: prefexIcon,
        suffix: IconButton(
          icon: suffexIcon ?? const SizedBox(),
          onPressed: togglePassword,
        ),
      ),
      obscureText: obescureText,
      validator: validator,
      onChanged: onChanged,
    );
  }
}
