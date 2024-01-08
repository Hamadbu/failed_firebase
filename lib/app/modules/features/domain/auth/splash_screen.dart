import 'package:failed_firebase/app/config/routers/named_routes.dart';
import 'package:failed_firebase/app/core/extensions/build_extensions.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.amber,
          height: context.screenHeight * 0.3,
          width: context.screenWidth * 0.3,
          child: Center(
            child: GestureDetector(
                onTap: () {
                  context.pushNamed(MyNamedRoutes.register);
                },
                child: Text(context.translate.login)),
          ),
        ),
      ),
    );
  }
}
