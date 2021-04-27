import 'package:flutter/material.dart';
import 'package:flutter_session/flutter_session.dart';
import 'package:requests/requests.dart';

// ignore: non_constant_identifier_names
ApiLogin(email, password) async {
  if (email == null || password == null || email == "" || password == "") {
    return {
      'status': 502,
      "errorTitle": "Valores nulos",
      "errorText": "Por favor, insira todos os dados para se autenticar."
    };
  } else if (!email.contains("@") ||
      email.contains('!') ||
      email.contains('?') ||
      email.contains('/') ||
      email.contains(',') ||
      !email.contains('.') ||
      email.contains(' ')) {
    return {
      'status': 502,
      "errorTitle": "Email incorreto",
      "errorText": "Por favor, verifique o email digitado."
    };
  } else {
    // var r = await Requests.post('https://google.com', {});
    // r.raiseForStatus();
    // String body = r.content();
    // print(body);
    await FlutterSession().set("token", email);

    return {'status': 200};
  }
}
