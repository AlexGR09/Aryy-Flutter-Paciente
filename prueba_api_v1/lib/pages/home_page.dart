import 'package:prueba_api_v1/search/country_search.dart';
import 'package:prueba_api_v1/models/country.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hola estrellitas'),
            MaterialButton(
                child: Text(
                  'Buscar',
                  style: TextStyle(color: Colors.white),
                ),
                shape: StadiumBorder(),
                elevation: 0,
                splashColor: Colors.transparent,
                color: Colors.blue,
                onPressed: () {
                  showSearch(
                      context: context,
                      delegate:
                          CountrySearchDelegate()); //me envia a la pagina de buscar
                })
          ],
        ),
      ),
    );
  }
}
