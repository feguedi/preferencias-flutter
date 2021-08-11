import 'package:flutter/material.dart';

import 'package:preferencias_usuario_app/src/pages/pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Preferencias',
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (_) => HomePage(),
        SettingsPage.routeName: (_) => SettingsPage(),
      },
    );
  }
}
