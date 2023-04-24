import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 138, 107, 107),
          centerTitle: true,
          title: Text('Lab 1')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Card(
            margin: EdgeInsets.only(left: 50, top: 50, right: 50, bottom: 50),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            elevation: 20,
            color: Colors.pink,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.network(
                  "https://i0.wp.com/vsiknygy.net.ua/wp-content/uploads/2018/03/remark-1-1-e1521705168741.jpg?fit=1024%2C768&ssl=1",
                  width: 200,
                  height: 200,
                ),
                Text(
                  'На західному фронті без змін',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                      style: TextStyle(fontWeight: FontWeight.bold),
                      'Антивоєнний роман німецького письменника Еріха Марії Ремарка, виданий 1929 р. У передмові до нього автор говорить: «Ця книга — не викриття і не сповідь. Це лише спроба розповісти про покоління, яке занапастила війна, про тих, хто став її жертвою, навіть якщо врятувався від снарядів»".'),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Card(
                  elevation: 20,
                  color: Colors.grey,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text('Назад', style: TextStyle(fontSize: 15))),
              Card(
                  color: Colors.grey,
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'Вперед',
                    style: TextStyle(fontSize: 15),
                  ))
            ],
          )
        ],
      ),
    ));
  }
}
