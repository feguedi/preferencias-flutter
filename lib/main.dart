import 'package:flutter/material.dart';

import 'package:preferencias_usuario_app/src/pages/pages.dart';
import 'package:preferencias_usuario_app/src/settings/preferencias_usuario.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = new PreferenciasUsuario();
  await prefs.initPrefs();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Preferencias',
      initialRoute: prefs.ultimaPagina,
      routes: {
        HomePage.routeName: (_) => HomePage(),
        SettingsPage.routeName: (_) => SettingsPage(),
      },
      theme: ThemeData(
        accentColor: prefs.colorSecundario ? Colors.teal : Colors.blue,
        backgroundColor: prefs.colorSecundario ? Colors.teal : Colors.blue,
      ),
    );
  }
}
