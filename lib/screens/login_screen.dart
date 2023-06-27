import 'package:app_products/providers/login_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
                    ChangeNotifierProvider(
                      create: (_) => LoginFormProviders(),
                      child: const _LoginForm(),
                    )
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
    final loginForm = Provider.of<LoginFormProviders>(context);

    return Container(
      child: Form(
        key: loginForm.formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(
                hintText: 'example@gmail.com',
                labelText: 'Email',
                prefixIcon: Icons.alternate_email,
              ),
              onChanged: (value) => loginForm.email = value,
              // --- --- --- Validator Email
              validator: (value) {
                String pattern =
                    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp = RegExp(pattern);

                return regExp.hasMatch(value ?? '') ? null : 'Incorrect email';
              },
            ),
            const SizedBox(height: 30),
            TextFormField(
              autocorrect: false,
              obscureText: true,
              decoration: InputDecorations.authInputDecoration(
                hintText: '*******',
                labelText: 'Password',
                prefixIcon: Icons.lock,
              ),
              onChanged: (value) => loginForm.password = value,
              // --- -- --- ---  Password Validator
              validator: (value) {
                return (value != null && value.length >= 6)
                    ? null
                    : 'valid 6 characters';
              },
            ),
            const SizedBox(height: 30),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.orange,
              onPressed: loginForm.isLoading
                  ? null
                  : () async {
                      FocusScope.of(context).unfocus();
                      if (!loginForm.isValidForm()) return;
                      
                      loginForm.isLoading = true;
                      await Future.delayed(const Duration(seconds: 2));
                      // TODO: Valide Email and password
                      loginForm.isLoading = false;
                      // ignore: use_build_context_synchronously
                      Navigator.pushReplacementNamed(context,'Home');
                    },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text(
                  loginForm.isLoading ? 'Wait...' : 'Log in',
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
