import 'package:failed_firebase/app/core/extensions/build_extensions.dart';
import 'package:failed_firebase/app/modules/features/domain/widgets/my_forms_widgets.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(context.translate.register),
      ),
      body: Column(children: [
        MyFormFields(formKey: formKey),
      ]),
    );
  }
}
