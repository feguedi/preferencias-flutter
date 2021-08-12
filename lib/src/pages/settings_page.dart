import 'package:flutter/material.dart';
import 'package:preferencias_usuario_app/src/widgets/widgets.dart';

class SettingsPage extends StatefulWidget {
  static String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
        centerTitle: true,
      ),
      drawer: MenuWidget(),
      body: Center(
        child: Text('Ajustes'),
      ),
    );
  }
}
