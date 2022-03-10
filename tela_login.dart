import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: darkBlue,
        hintColor: Colors.black,
      ),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: MyWidget(),
        ),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(children: [
          const Text('Bem-vindo', style: TextStyle(color: Colors.black)),
          const Text('Faça o cadastro para começar',
              style: TextStyle(color: Colors.black)),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
                hintText: 'Nome',
               
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
                hintText: 'Email',
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue, width: 1.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0),
                ),
                hintText: 'Senha',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(children: [
              Expanded(
                child: ElevatedButton(
                    child: const Text('Login'), onPressed: () {}),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(children: [
              Expanded(
                child: ElevatedButton(
                    child: const Text('Login com o Facebook'),
                    onPressed: () {}),
              ),
            ]),
          ),
        ]));
  }
}
