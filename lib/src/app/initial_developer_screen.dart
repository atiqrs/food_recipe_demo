import 'package:flutter/material.dart';
import 'package:food_recipe_demo/src/app/app_router.dart';
import 'package:food_recipe_demo/src/common/widgets/rounded_text_button.dart';

class InitialDeveloperScreen extends StatelessWidget {
  const InitialDeveloperScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RoundedTextButton(
            padding: const EdgeInsets.all(20),
            onPressed: () => Navigator.pushNamed(
              context,
              AppRouter.home,
            ),
            child: const Text('Home Screen'),
          ),
        ],
      ),
    );
  }
}
