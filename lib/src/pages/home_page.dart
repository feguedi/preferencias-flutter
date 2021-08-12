import 'package:flutter/material.dart';

import 'package:preferencias_usuario_app/src/widgets/widgets.dart';

class HomePage extends StatelessWidget {
  static String routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Preferencias de usuario'),
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Color secundario:'),
          Divider(
            color: Colors.grey,
          ),
          Text('Sexo:'),
          Divider(
            color: Colors.grey,
          ),
          Text('Nombre de usuario:'),
          Divider(
            color: Colors.grey,
          ),
        ],
      ),
    );
  }
}
