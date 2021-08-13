import 'package:flutter/material.dart';

import 'package:preferencias_usuario_app/src/pages/pages.dart';
import 'package:preferencias_usuario_app/src/settings/preferencias_usuario.dart';

class MenuWidget extends StatelessWidget {
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/menu-img.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.pages,
              // color: prefs.colorSecundario ? Colors.teal : Colors.blue,
              color: Theme.of(context).accentColor,
            ),
            title: Text('Inicio'),
            onTap: () {
              Navigator.pushReplacementNamed(context, HomePage.routeName);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.party_mode,
              color: prefs.colorSecundario ? Colors.teal : Colors.blue,
            ),
            title: Text('Party mode'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.people,
              color: prefs.colorSecundario ? Colors.teal : Colors.blue,
            ),
            title: Text('Gente'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(
              Icons.settings,
              color: prefs.colorSecundario ? Colors.teal : Colors.blue,
            ),
            title: Text('Ajustes'),
            onTap: () {
              // Navigator.pop(context);
              // Navigator.pushNamed(context, SettingsPage.routeName);
              Navigator.pushReplacementNamed(context, SettingsPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
