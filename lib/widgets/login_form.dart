import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';
import 'package:mytrackt/widgets/input_decoration.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
    required GlobalKey<FormState> globalKey,
    required TextEditingController emailTextController,
    required TextEditingController passwordTextController,
  })  : _globalKey = globalKey,
        _emailTextController = emailTextController,
        _passwordTextController = passwordTextController,
        super(key: key);

  final GlobalKey<FormState> _globalKey;
  final TextEditingController _emailTextController;
  final TextEditingController _passwordTextController;

  bool validatePassword(String password) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    return regExp.hasMatch(password);
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _globalKey,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextFormField(
              validator: (value) => EmailValidator.validate(value!)
                  ? null
                  : 'Please enter a valid email',
              controller: _emailTextController,
              decoration: formTextInputDecoration(
                  label: 'Enter Email', hintText: 'jdoe@bald-traveler.com')),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: TextFormField(
              controller: _passwordTextController,
              obscureText: true,
              validator: (value) => validatePassword(value!)
                  ? null
                  : 'Please enter a valid password.',
              decoration: formTextInputDecoration(
                  label: 'Enter Password', hintText: '')),
        ),
        SizedBox(
          height: 20,
        ),
        TextButton(
          style: TextButton.styleFrom(
              primary: Colors.white,
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              backgroundColor: Colors.amber,
              textStyle: TextStyle(fontSize: 18)),
          child: Text('Sign In'),
          onPressed: () {
            if (_globalKey.currentState!.validate()) {}
          },
        )
      ]),
    );
  }
}
