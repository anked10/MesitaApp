import 'package:flutter/material.dart';
import 'package:messita_app/src/prefences/preferences.dart';

class MeseroPage extends StatelessWidget {
  const MeseroPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final preferences = Preferences();
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            preferences.clearPreferences();
            Navigator.pushNamedAndRemoveUntil(context, 'login', (route) => false);
          },
          child: Text('Cerrar Sesión, Mesero',
              style: TextStyle(
                color: Colors.black,
              )),
        ),
      ),
    );
  }
}
