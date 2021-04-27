import 'package:flutter/material.dart';
import 'background.dart';
import '../../../components/rounded_button.dart';
import '../../../utilities/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // This size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipRRect(
              borderRadius: new BorderRadius.circular(35.0),
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/logo.png"),
                width: 250.0,
                height: 100.0,
              ),
            ),
            SizedBox(height: size.height * 0.07),
            Text(
              "Olá, seja bem vindo...",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "ENTRAR",
              press: () => Navigator.pushReplacementNamed(context, '/login'),
            ),
            RoundedButton(
              text: "CADASTRAR-SE",
              color: kRegisterBottun,
              textColor: Colors.white,
              press: () => Navigator.pushReplacementNamed(context, '/register'),
            ),
          ],
        ),
      ),
    );
  }
}
