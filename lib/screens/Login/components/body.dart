import 'package:flutter/material.dart';
import 'package:mtu_ios/components/succes_button.dart';
import 'background.dart';
import '../../../loaders/loading_screen.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import '../../../api.dart';

var email;
var password;

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  '/',
                );
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(
                        left: 0,
                        top: 0,
                        bottom: 0,
                      ),
                      child: Icon(
                        Icons.keyboard_arrow_left,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Voltar',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: size.height * 0.07),
            ClipRRect(
                borderRadius: new BorderRadius.circular(35.0),
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/logo.png"),
                  width: 300.0,
                  height: 120.0,
                )),
            SizedBox(height: size.height * 0.03),
            RoundedInputField(
              hintText: "Email",
              onChanged: (value) {
                email = value;
              },
            ),
            RoundedPasswordField(
              onChanged: (value) {
                password = value;
              },
            ),
            InkWell(
              onTap: () {
                print('OK');
              },
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 50.0, top: 8.0, bottom: 10.0),
                  child: new Text(
                    "Esqueci minha senha",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14.5,
                    ),
                  ),
                ),
              ),
            ),
            SuccessButton(
              text: "Entrar".toUpperCase(),
              press: () async {
                var result = await ApiLogin(email, password);
                if (result['status'] == 200) {
                  email = '';
                  password = '';
                  showAlertDialog(context, 'Autenticando...');
                  await sleep3();
                  Navigator.pop(context);
                  Navigator.pushReplacementNamed(context, '/menu');
                } else {
                  showAlertDialog(context, 'Autenticando...');
                  await sleep3();
                  Navigator.pop(context);
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: new Text("${result['errorTitle']}"),
                        content: new Text("${result['errorText']}"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        actions: <Widget>[
                          new FlatButton(
                            child: new Text('Fechar'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          )
                        ],
                      );
                    },
                  );
                }
              },
            ),
            SizedBox(height: size.height * 0.08),
            AlreadyHaveAnAccountCheck(
              press: () => Navigator.pushReplacementNamed(context, '/register'),
            ),
          ],
        ),
      ),
    );
  }
}
