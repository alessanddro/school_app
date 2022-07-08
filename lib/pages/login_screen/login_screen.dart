import 'package:flutter/material.dart';

import 'package:school_app/components/custom_buttons.dart';
import 'package:school_app/constants/global-constants.dart';

late bool _passVisible;

class LoginScreen extends StatefulWidget {
  static String routeName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    // TODO: implement initState

    _passVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: kDefaultPadding),
              Container(
                width: getWidth(context),
                // height: getHeigth(context) / 2.8,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/logo.jpg',
                      height: 200,
                    ),
                    Text(
                      "Seja muito Bem vindo!",
                      style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 30,
                          ),
                    ),
                    SizedBox(height: kDefaultPadding / 6),
                    Text(
                      "Faça Login para continuar",
                      style: Theme.of(context).textTheme.subtitle2!,
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding * 3),
              Container(
                width: getWidth(context),
                height: getHeigth(context) * 0.565,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(kDefaultPadding * 1.5),
                    topRight: Radius.circular(kDefaultPadding * 1.5),
                  ),
                  color: kOtherColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(kDefaultPadding),
                  child: Column(
                    children: [
                      Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            buildEmailField(),
                            SizedBox(height: kDefaultPadding),
                            buildPassField(),
                            SizedBox(height: kDefaultPadding),
                            DefaultButton(
                              onPress: () {
                                if (_formKey.currentState!.validate()) {}
                              },
                              title: "Logar!",
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Esqueci minha senha.",
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      textAlign: TextAlign.start,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 18,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: 'Numero da Matricula ou E-Mail',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
      ),
      validator: (value) {
        RegExp regExp = new RegExp(emailPattern);
        if (value == null || value.isEmpty) {
          return "Por favor, preencha todos os campos";
        } else if (!regExp.hasMatch(value)) {
          return "Insira um e-mail valido";
        }
      },
    );
  }

  TextFormField buildPassField() {
    return TextFormField(
      obscureText: _passVisible,
      textAlign: TextAlign.start,
      keyboardType: TextInputType.visiblePassword,
      style: TextStyle(
        color: kTextBlackColor,
        fontSize: 18,
        fontWeight: FontWeight.w300,
      ),
      decoration: InputDecoration(
        labelText: 'Senha',
        floatingLabelBehavior: FloatingLabelBehavior.always,
        isDense: true,
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              _passVisible = !_passVisible;
            });
          },
          icon: Icon(
            _passVisible ? Icons.visibility_off_outlined : Icons.visibility,
          ),
          iconSize: kDefaultPadding,
        ),
      ),
      validator: (value) {
        if (value!.length < 5) {
          return "Sua senha devve possuir mais de 5 caracteres";
        }
      },
    );
  }
}
