import 'package:flutter/material.dart';

import 'package:preferencias_usuario_app/src/settings/preferencias_usuario.dart';
import 'package:preferencias_usuario_app/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {
    prefs.ultimaPagina = routeName;

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
        backgroundColor: prefs.colorSecundario ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario: ${prefs.colorSecundario}'),
          Divider(
            color: Colors.grey,
          ),
          Text('Sexo: ${prefs.sexo}'),
          Divider(
            color: Colors.grey,
          ),
          Text('Nombre de usuario: ${prefs.nombre}'),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
