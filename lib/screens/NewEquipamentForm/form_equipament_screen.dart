import 'package:flutter/material.dart';
import 'components/body.dart';
import '../../components/sidebar.dart';

class FormEquipament extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cadastro de equipamento')),
      body: Body(),
      drawer: MainSidebar(),
    );
  }
}
