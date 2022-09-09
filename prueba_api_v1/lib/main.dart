// Team: Erik
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:prueba_api_v1/models/country.dart';
import 'package:prueba_api_v1/services/country_service.dart';

void main() => runApp(const MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late Future<Country> countryDetails;

  @override
  void initState() {
    super.initState();
    final countryService = CountryService();
    countryDetails = countryService.getCountryByName("peru");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Center(
          child: FutureBuilder<Country>(
            future: countryDetails,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data!.flag);
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return const CircularProgressIndicator();
            },
          ),
        ),
      ),
    );
  }
}
