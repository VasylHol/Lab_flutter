import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String _name = "";
  bool _toogle = false;
  double _currValue = 50;
  String dropdownValue = 'Програміст';
  bool _buttonClicked = false;
  List<String> jobs = [
    'Програміст',
    'Бугхалтер',
    'Будівельник',
    'Сварщик',
    'Продавець',
  ];
  void _job(String newJob) {
    setState(() {
      dropdownValue = newJob;
    });
    print('Selected job:$dropdownValue');
  }

  void _onChangedName(value) {
    setState(() {
      _name = value;
    });
  }

  void _onButtonClicked() {
    setState(() {
      _buttonClicked = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            AppBar(title: Text("Професії")),
            Align(
              alignment: Alignment.topRight,
              child: Switch(
                value: _toogle,
                onChanged: (bool value) {
                  setState(() => _toogle = value);
                },
                activeColor: const Color.fromARGB(255, 137, 117, 117),
              ),
            ),
            TextFormField(
              onChanged: (value) => _onChangedName(value),
              decoration: InputDecoration(hintText: "Введіть своє ім'я:"),
            ),
            Slider(
              value: _currValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: '$_currValue',
              onChanged: (value) {
                setState(() {
                  _currValue = value;
                });
              },
            ),
            DropdownButton(
              value: dropdownValue,
              icon: Icon(Icons.arrow_downward),
              iconSize: 24,
              elevation: 16,
              style: TextStyle(color: Colors.red),
              onChanged: (newJob) {
                _job(newJob!);
              },
              items: jobs.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            ElevatedButton(
              child: Text("Показати інформацію про людину"),
              onPressed: _onButtonClicked,
            ),
            if (_buttonClicked == true)
              Text("Ім'я: $_name\nВік: $_currValue\nРобота: $dropdownValue")
          ],
        ),
      ),
      backgroundColor:
          _toogle ? Colors.white : Color.fromARGB(255, 227, 169, 169),
    );
  }
}
