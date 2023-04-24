import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Lab 5',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Lab 5'),
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontWeight: FontWeight.bold,
            ),
            backgroundColor:  Color.fromARGB(255, 255, 157, 77),
          ),
          body:  Column(
              children: <Widget>[
                Text('1984',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0)),
                Container(child:  Image.network(
                              "https://www.bookovka.ua/232623-home_default/1984-myagkaya-oblozhka.jpg",
                              width: 200,
                              height: 250,
                            ), color: Colors.blue, padding: const EdgeInsets.all(8.0),)
              ],
              
            ),
          bottomNavigationBar:
              BottomNavigationBar(items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Головна',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_balance_wallet),
              label: 'Кошти',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.access_alarm),
              label: 'Нагадування',
            ),
          ], backgroundColor: const Color.fromARGB(255, 255, 157, 77)),
        ));
  }
}
