import 'package:flutter/material.dart';
import 'package:app_products/widgets/widgets.dart';

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
              const Text('Sign up')
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
              decoration: const InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.purple,
                  ),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.deepPurple,
                    width: 2,
                  ),
                ),
                labelText: 'Email',
                hintText: 'example@gmail.com',
                labelStyle: TextStyle(
                  color: Colors.grey
                ),
                prefixIcon: Icon(Icons.alternate_email, color: Colors.deepPurple),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
