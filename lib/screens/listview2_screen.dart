import 'package:flutter/material.dart';

class listview2 extends StatelessWidget {
  var games = ["Sush", "Cod", "Over", "Pacman", "Spiderman"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List view tipo2'),
        ),
        body: ListView.separated(
          //Obtener el tamaño de mi lista
          itemCount: games.length,
          //Obtenemos el constructor de mi lista
          itemBuilder: (context, index) => ListTile(
            title: Text(games[index]),
            //Asignamos el icono de cada elemento
            trailing: Icon(Icons.arrow_forward_ios, color: Colors.blue),
            onTap: () {
              var seleccion = games[index];
            },
          ),
          separatorBuilder: (_, __) => Divider(),
        ));
  }
}
