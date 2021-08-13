import 'package:flutter/material.dart';
import 'package:preferencias_usuario_app/src/pages/pages.dart';

import 'package:preferencias_usuario_app/src/widgets/widgets.dart';
import 'package:preferencias_usuario_app/src/settings/preferencias_usuario.dart';

class SettingsPage extends StatefulWidget {
  static final String routeName = 'settings';

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  late bool _colorSecundario;
  late int _sexo;
  late String _nombre;

  late TextEditingController _textController;

  final prefs = new PreferenciasUsuario();

  @override
  void initState() {
    super.initState();
    prefs.ultimaPagina = SettingsPage.routeName;
    _colorSecundario = prefs.colorSecundario;
    _sexo = prefs.sexo;

    _textController = new TextEditingController(text: prefs.nombre);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ajustes'),
        centerTitle: true,
        backgroundColor: prefs.colorSecundario ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              'Ajustes',
              style: TextStyle(
                fontSize: 45.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Divider(),
          SwitchListTile(
            value: _colorSecundario,
            title: Text('Color secundario'),
            activeColor: prefs.colorSecundario ? Colors.teal : Colors.blue,
            onChanged: (bool value) {
              setState(() {
                prefs.colorSecundario = value;
                _colorSecundario = value;
              });
            },
          ),
          RadioListTile(
            title: Text('Masculino'),
            selectedTileColor:
                prefs.colorSecundario ? Colors.teal : Colors.blue,
            activeColor: prefs.colorSecundario ? Colors.teal : Colors.blue,
            value: 1,
            groupValue: _sexo,
            onChanged: _setSelectedRadio,
          ),
          RadioListTile(
            title: Text('Femenino'),
            selectedTileColor:
                prefs.colorSecundario ? Colors.teal : Colors.blue,
            activeColor: prefs.colorSecundario ? Colors.teal : Colors.blue,
            value: 2,
            groupValue: _sexo,
            onChanged: _setSelectedRadio,
          ),
          Divider(),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              controller: _textController,
              decoration: InputDecoration(
                labelText: 'Nombre',
                helperText: 'Nombre de la persona usando el teléfono',
              ),
              onChanged: (String value) {
                prefs.nombre = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  void _setSelectedRadio(int? value) {
    setState(() {
      prefs.sexo = value!;
      _sexo = value;
    });
  }
}
