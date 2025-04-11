import 'package:flutter/material.dart';
import '../widgets/input.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Magd'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Input(
          title: "Password",
          hintText: "Enter password",
          leftImage: null,
          rightImage: null,
          errorText: "Password is required",
          forgotText: "Forgot password?",
        ),
      ),
    );
  }
}
