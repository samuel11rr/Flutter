import 'package:flutter/material.dart';


class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}


// el _ significa que es privado
class _ContadorPageState extends State <ContadorPage> {

  final _estiloTexto = new TextStyle( fontSize: 25 );

  int _conteo = 0;

  @override
  Widget build( BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
        elevation: 10.0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Cantidad de taps: ', style: _estiloTexto),
            Text( '$_conteo' , style: _estiloTexto),
          ],
        )
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: _crearBotones()
    );
  }



  Widget _crearBotones(){

    return Row(    
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30.0 ),
        FloatingActionButton( child: Icon( Icons.refresh ), onPressed: _reset ),
        Expanded(child: SizedBox()),
        FloatingActionButton( child: Icon( Icons.remove ), onPressed: _sustraer ),
        SizedBox( width: 5.0 ),
        FloatingActionButton( child: Icon( Icons.add ), onPressed: _agregar ),
      ],
    );

  }



  void _agregar(){
    setState(() => _conteo++ );
  }

  void _sustraer(){
    setState(() => _conteo-- );
  }

  void _reset(){
    setState(() => _conteo = 0 );
  }

}