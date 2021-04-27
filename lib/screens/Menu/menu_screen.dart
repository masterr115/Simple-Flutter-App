import 'package:flutter/material.dart';
import 'components/body.dart';
import '../../components/sidebar.dart';

class MenuScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu')),
      body: Body(),
      drawer: MainSidebar(),
    );
  }
}
