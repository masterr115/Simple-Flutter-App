import 'dart:convert';

import 'package:mtu_ios/components/NewEquipament/text_field_container.dart';
import 'package:mtu_ios/components/succes_button.dart';
import 'package:mtu_ios/loaders/loading_screen.dart';
import 'background.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';
import '../../../components/NewEquipament/NewEquipamentForm.dart';
import 'getImage.dart';

var chassi;
var _marcas;
var _modelos;
var _origem;

List marcas = [
  {"brand": "Marca 1", "id": "1"},
  {"brand": "Marca 2", "id": "2"},
  {"brand": "Marca 3", "id": "3"},
  {"brand": "Marca 4", "id": "4"},
  {"brand": "Marca 5", "id": "5"},
  {"brand": "Marca 6", "id": "6"},
  {"brand": "Marca 7", "id": "7"},
  {"brand": "Marca 8", "id": "8"},
  {"brand": "Marca 9", "id": "9"},
];
List modelos = [];
List origem = ['Internacional', 'Brasileiro'];

class Body extends StatefulWidget {
  @override
  _NewEquipamentForm createState() => _NewEquipamentForm();
}

class _NewEquipamentForm extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    // FlutterSession().get('token').then((value) => print(value));

    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.03),
            InkWell(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 50.0, top: 8.0, bottom: 2.0),
                  child: new Text(
                    "Número chassi",
                    style: TextStyle(
                      color: Color(0xFF4a4a4a),
                      fontSize: 14.5,
                    ),
                  ),
                ),
              ),
            ),
            RoundedInputField(
              onChanged: (value) {},
            ),
            InkWell(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 50.0, top: 8.0, bottom: 2.0),
                  child: new Text(
                    "Marca do equipamento",
                    style: TextStyle(
                      color: Color(0xFF4a4a4a),
                      fontSize: 14.5,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: TextFieldContainer(
                child: DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    child: Container(
                      child: DropdownButton(
                        elevation: 0,
                        underline: SizedBox(),
                        isExpanded: true,
                        hint: new Text("Selecione a marca..."),
                        value: _marcas,
                        items: marcas.map<DropdownMenuItem>((value) {
                          return DropdownMenuItem(
                            value: value['id'],
                            child: Text(value['brand'].toString()),
                          );
                        }).toList(),
                        onChanged: (value) async => {
                          setState(
                            () {
                              _modelos = null;
                              _marcas = value;
                            },
                          ),
                          if (value == '1')
                            {
                              modelos.clear(),
                              modelos.add('Modelo 1'),
                            }
                          else if (value == '2')
                            {
                              modelos.clear(),
                              modelos.add('Modelo 2'),
                              modelos.add('Modelo 10'),
                              modelos.add('Modelo 15'),
                            }
                          else if (value == '3')
                            {
                              modelos.clear(),
                              modelos.add('Modelo 3'),
                            }
                          else if (value == '4')
                            {
                              modelos.clear(),
                              modelos.add('Modelo 4'),
                            }
                          else if (value == '5')
                            {
                              modelos.clear(),
                              modelos.add('Modelo 5'),
                            }
                          else if (value == '6')
                            {
                              modelos.clear(),
                              modelos.add('Modelo 6'),
                            },
                          showAlertDialog(context, "Carregando..."),
                          await sleep2(),
                          Navigator.pop(context),
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 50.0, top: 8.0, bottom: 2.0),
                  child: new Text(
                    "Modelo do equipamento",
                    style: TextStyle(
                      color: Color(0xFF4a4a4a),
                      fontSize: 14.5,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: TextFieldContainer(
                child: DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    child: Container(
                      child: DropdownButton(
                        elevation: 0,
                        underline: SizedBox(),
                        isExpanded: true,
                        value: _modelos,
                        items: modelos.map<DropdownMenuItem<String>>((value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value.toString()),
                          );
                        }).toList(),
                        hint: new Text("Selecione o modelo..."),
                        onChanged: (value) async => {
                          setState(
                            () {
                              _modelos = value;
                            },
                          ),
                          showAlertDialog(context, "Carregando..."),
                          await sleep2(),
                          Navigator.pop(context),
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 50.0, top: 8.0, bottom: 2.0),
                  child: new Text(
                    "Ano de fabricação",
                    style: TextStyle(
                      color: Color(0xFF4a4a4a),
                      fontSize: 14.5,
                    ),
                  ),
                ),
              ),
            ),
            RoundedInputField(
              keyboardType: TextInputType.datetime,
              onChanged: (value) {},
            ),
            InkWell(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 50.0, top: 8.0, bottom: 2.0),
                  child: new Text(
                    "Cor Externa",
                    style: TextStyle(
                      color: Color(0xFF4a4a4a),
                      fontSize: 14.5,
                    ),
                  ),
                ),
              ),
            ),
            RoundedInputField(
              keyboardType: TextInputType.text,
              onChanged: (value) {},
            ),
            InkWell(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 50.0, top: 8.0, bottom: 2.0),
                  child: new Text(
                    "Origem do equipamento",
                    style: TextStyle(
                      color: Color(0xFF4a4a4a),
                      fontSize: 14.5,
                    ),
                  ),
                ),
              ),
            ),
            Container(
              child: TextFieldContainer(
                child: DropdownButtonHideUnderline(
                  child: ButtonTheme(
                    child: Container(
                      child: DropdownButton(
                        elevation: 0,
                        underline: SizedBox(),
                        isExpanded: true,
                        value: _origem,
                        items: origem.map<DropdownMenuItem<String>>((value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value.toString()),
                          );
                        }).toList(),
                        hint: new Text("Selecione a origem..."),
                        onChanged: (value) async => {
                          setState(
                            () {
                              _origem = value;
                            },
                          ),
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),
            InkWell(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 50.0, top: 8.0, bottom: 2.0),
                  child: new Text(
                    "Horímetro",
                    style: TextStyle(
                      color: Color(0xFF4a4a4a),
                      fontSize: 14.5,
                    ),
                  ),
                ),
              ),
            ),
            RoundedInputField(
              keyboardType: TextInputType.number,
              onChanged: (value) {},
            ),
            SizedBox(height: size.height * 0.03),
            SuccessButton(
              press: () => print(_modelos),
              text: "Cadastrar".toUpperCase(),
            ),
            SizedBox(height: size.height * 0.03),
            if (image != null)
              Column(
                children: [
                  InkWell(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding:
                            EdgeInsets.only(left: 50.0, top: 8.0, bottom: 2.0),
                        child: new Text(
                          "Foto",
                          style: TextStyle(
                            color: Color(0xFF4a4a4a),
                            fontSize: 14.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Image.memory(base64Decode(image.split(',').last)),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
