import 'package:failed_firebase/app/core/extensions/build_extensions.dart';
import 'package:failed_firebase/app/modules/features/domain/helper/auth_validators.dart';
import 'package:failed_firebase/app/modules/features/domain/widgets/my_textform_widget.dart';
import 'package:flutter/material.dart';

class MyFormFields extends StatefulWidget {
  const MyFormFields({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  State<MyFormFields> createState() => _MyFormFieldsState();
}

class _MyFormFieldsState extends State<MyFormFields> {
  final _authValidators = AuthValidators();

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  final FocusNode emailNode = FocusNode();
  final FocusNode passwordNode = FocusNode();
  final FocusNode userNameNode = FocusNode();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    userNameController.dispose();
    emailNode.dispose();
    passwordNode.dispose();
    userNameNode.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            MyTextFormField(
              textEditingController: emailController,
              focusNode: emailNode,
              myTextInputAction: TextInputAction.next,
              labelText: context.translate.email,
              prefexIcon: const Icon(Icons.email),
              obescureText: false,
              onChanged: null,
              validator: (val) {
                return _authValidators.emailValidator(val);
              },
            ),
            SizedBox(
              height: context.screenHeight * 0.05,
            ),
            MyTextFormField(
              textEditingController: passwordController,
              focusNode: passwordNode,
              myTextInputAction: TextInputAction.next,
              labelText: context.translate.userName,
              prefexIcon: const Icon(Icons.person),
              obescureText: false,
              onChanged: null,
              validator: (val) => _authValidators.userNameValidator(val),
              suffexIcon: Icon(Icons.remove_red_eye_outlined),
            )
          ],
        ),
      ),
    );
  }
}
