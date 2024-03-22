import 'package:flutter/material.dart';

import 'widgets/design_system/text_field_default.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.blue.shade900,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 120,
            horizontal: 20,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'AuthentiGate',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 30),
              const TextFieldDefault(
                prefixIcon: Icons.person,
                hintText: 'Email',
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 14),
              const TextFieldDefault(
                keyboardType: TextInputType.text,
                suffixIcon: Icons.visibility,
                prefixIcon: Icons.lock,
                hintText: 'Senha',
                obscureText: true,
              ),
              const SizedBox(height: 14),
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Esqueceu sua senha?',
                    style: TextStyle(
                        fontWeight: FontWeight.w900, color: Colors.white),
                  )
                ],
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                ),
                onPressed: null,
                child: const Text(
                  'Entrar',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
