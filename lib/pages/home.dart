import 'package:flutter/material.dart';
import 'widgets/input.dart'; // import your custom Input widget

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Breakfast'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Input(
          title: "Password",
          hintText: "Enter password",
          leftImage: "assets/icons/i_lock.png",
          rightImage: "assets/icons/i_eye.png",
          errorText: "Password is required",
          forgotText: "Forgot password?",
        ),
      ),
    );
  }
}
