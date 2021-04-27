import 'package:flutter/material.dart';

class MainSidebar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(
              context,
            ).primaryColor,
            margin: EdgeInsets.only(
              bottom: 6,
            ),
            child: Center(
              child: Column(
                children: <Widget>[
                  Container(
                    width: 225,
                    height: 88,
                    margin: EdgeInsets.only(
                      top: 30,
                      bottom: 25,
                    ),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/logo.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  Text(
                    'Roberto Correa',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    'contato@robertocorrea.com',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.home_filled,
            ),
            title: Text(
              "Menu",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () => Navigator.pushReplacementNamed(
              context,
              '/menu',
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.add_circle_outline,
            ),
            title: Text(
              "Novo equipamento",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () => Navigator.pushReplacementNamed(
              context,
              '/newEquipament',
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.article_outlined,
            ),
            title: Text(
              "Consulta de estoque",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () => Navigator.pushReplacementNamed(
              context,
              '/newEquipament',
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.check_circle_outline,
            ),
            title: Text(
              "Revisão",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () => Navigator.pushReplacementNamed(
              context,
              '/newEquipament',
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment(
                .0,
                .9,
              ),
              child: ListTile(
                leading: Icon(
                  Icons.logout,
                ),
                title: Text(
                  "Sair",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                onTap: () => Navigator.pushReplacementNamed(
                  context,
                  '/',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
