import 'package:flutter/material.dart';
import 'package:mtu_ios/components/succes_button.dart';
import 'background.dart';
import '../../../components/already_have_an_account_acheck.dart';
import '../../../components/rounded_button.dart';
import '../../../components/rounded_input_field.dart';
import '../../../components/rounded_password_field.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.04),
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
                      padding: EdgeInsets.only(
                        left: 0,
                        top: 10,
                        bottom: 10,
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
            SizedBox(height: size.height * 0.03),
            ClipRRect(
              borderRadius: new BorderRadius.circular(35.0),
              child: Image(
                fit: BoxFit.fill,
                image: AssetImage("assets/images/logo.png"),
                width: 250.0,
                height: 100.0,
              ),
            ),
            SizedBox(height: size.height * 0.03),
            RoundedInputFieldRegister(
              hintText: "Nome",
              icon: Icons.supervised_user_circle,
              onChanged: (value) {},
            ),
            RoundedInputFieldRegister(
              hintText: "Sobrenome",
              icon: Icons.verified_user_outlined,
              onChanged: (value) {},
            ),
            RoundedInputFieldRegister(
              hintText: "Email",
              icon: Icons.email_outlined,
              onChanged: (value) {},
            ),
            RoundedInputFieldRegister(
              hintText: "CEP",
              icon: Icons.location_on,
              onChanged: (value) {},
            ),
            RoundedInputFieldRegister(
              hintText: "Estado",
              icon: Icons.location_searching_outlined,
              onChanged: (value) {},
            ),
            RoundedInputFieldRegister(
              hintText: "Cidade",
              icon: Icons.location_city,
              onChanged: (value) {},
            ),
            RoundedPasswordField(
              onChanged: (value) {},
            ),
            SuccessButtonRegister(
              text: "Registrar-se".toUpperCase(),
              press: () {},
            ),
            SizedBox(height: size.height * 0.08),
            AlreadyHaveAnAccountCheck(
              login: false,
              press: () => Navigator.pushReplacementNamed(context, '/login'),
            ),
            SizedBox(height: size.height * 0.04),
          ],
        ),
      ),
    );
  }
}
