import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:mytrackt/widgets/create_account_form.dart';
import 'package:mytrackt/widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreateAccountClicked = false;
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      child: Column(
        children: [
          Expanded(
              flex: 2,
              child: Container(
                color: HexColor('#deedfc'),
              )),
          Text(
            isCreateAccountClicked ? "Create Account" : "Sign In",
            style: Theme.of(context).textTheme.headline5,
          ),
          SizedBox(
            height: 10,
          ),
          Column(
            children: [
              SizedBox(
                  width: 300,
                  height: 300,
                  child: !isCreateAccountClicked
                      ? LoginForm(
                          globalKey: _globalKey,
                          emailTextController: _emailTextController,
                          passwordTextController: _passwordTextController)
                      : CreateAccountForm(
                          globalKey: _globalKey,
                          emailTextController: _emailTextController,
                          passwordTextController: _passwordTextController)),
              TextButton.icon(
                  icon: Icon(Icons.portrait_rounded),
                  style: TextButton.styleFrom(
                      primary: HexColor('#fd5b28'),
                      textStyle:
                          TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
                  onPressed: () {
                    setState(() {
                      isCreateAccountClicked = !isCreateAccountClicked;
                    });
                  },
                  label: Text(isCreateAccountClicked
                      ? 'Already have an account? Sign In...'
                      : 'Create Account')),
            ],
          ),
          Expanded(
              flex: 2,
              child: Container(
                color: HexColor('#deedfc'),
              ))
        ],
      ),
    ));
  }
}
