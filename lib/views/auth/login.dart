import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:bukoli_operation/utils/translator.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 150),
                child: Center(
                  child: SizedBox(
                      width: 150,
                      height: 150,
                      child: SvgPicture.asset('assets/images/system/logo.svg')
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 80),
                child: Text(
                  Translator.titleLogin,
                  style: TextStyle(
                    color: Theme.of(context).primaryColorDark
                  ),
                ),
              ),
              Form(
                  child: Column(
                    key: _loginFormKey,
                    children: <Widget> [
                      usernameInput(),
                      passwordInput(),
                      _loginButton()
                    ],
                  )
              ),
            ],
          ),
        )
      ),
    );
  }

  InputDecoration loginInputDecoration(String hintText) =>
      InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
              color: Theme.of(context).primaryColorLight,
              fontSize: 13
          ),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1,
                  color: Theme.of(context).primaryColorLight
              )
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                width: 1,
                color: Theme.of(context).secondaryHeaderColor
            ),
          ),
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  width: 1,
                  color: Theme.of(context).primaryColor
              )
          )
      );
  TextStyle loginInputStyle() =>
      TextStyle(
          color: Theme.of(context).primaryColorDark,
          fontSize: 13
      );

  Widget usernameInput() =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: TextFormField(
          style: loginInputStyle(),
          decoration: loginInputDecoration(Translator.formUsername),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Boş bırakılmaz';
            }
            return null;
          },
        ),
      );

  Widget passwordInput() =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: TextFormField(
          obscureText: true,
          style: loginInputStyle(),
          decoration: loginInputDecoration(Translator.formPassword),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return 'Boş bırakılmaz';
            }
            return null;
          },
        ),
      );

  Widget _loginButton() =>
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            splashFactory: NoSplash.splashFactory,
            padding: const EdgeInsets.all(15),
            backgroundColor: Theme.of(context).secondaryHeaderColor,
            foregroundColor: Theme.of(context).scaffoldBackgroundColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            minimumSize: const Size.fromHeight(60)
          ),
          child: const Text(
            Translator.formLoginButton,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
          onPressed: () {
            // Validate returns true if the form is valid, or false otherwise.
            if (_loginFormKey.currentState!.validate()) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Processing Data')),
              );
            }
          },
        ),
      );
}
