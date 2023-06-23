import 'package:flutter/material.dart';

import 'package:app_products/widgets/widgets.dart';
import 'package:app_products/ui/input_decorations.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 250),
              CardContainer(
                child: Column(
                  children: [
                    const SizedBox(height: 10),
                    Text('Login',
                        style: Theme.of(context).textTheme.headlineMedium),
                    const SizedBox(height: 10),
                    // const Text('Form'),
                    const _LoginForm(),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              const Text('Sign up'),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class _LoginForm extends StatelessWidget {
  const _LoginForm();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Form(
        //TODO: mantener la referencia KEY
        child: Column(
          children: [
            TextFormField(
                autocorrect: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecorations.authInputDecoration(
                    hintText: 'example@gmail.com',
                    labelText: 'Email',
                    prefixIcon: Icons.alternate_email)),
            const SizedBox(height: 30),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              decoration: InputDecorations.authInputDecoration(
                  hintText: '*******',
                  labelText: 'Password',
                  prefixIcon: Icons.lock),
            ),
            const SizedBox(height: 30),
            MaterialButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: const Text(
                  'Log in',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
