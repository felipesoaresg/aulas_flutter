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
    return Column(children: [
      Image.network(
          "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif",
          // width: 150,
          height: 150),
   const   Text("Cadastre-se",
          style: TextStyle(
            fontSize: 22,
          )),
      Padding(
        padding:const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Container(
            //  color: Colors.red,
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2015/12/11/11/43/google-1088004_960_720.png'),
                fit: BoxFit.contain,
              ),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            //  color: Colors.red,
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2021/06/15/12/51/facebook-6338509_1280.png'),
                fit: BoxFit.contain,
              ),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          Container(
            //  color: Colors.red,
            width: 100,
            height: 50,
            decoration: BoxDecoration(
              color: const Color(0xff7c94b6),
              image: const DecorationImage(
                image: NetworkImage(
                    'https://cdn.pixabay.com/photo/2016/11/11/07/47/apple-1815973_960_720.png'),
                fit: BoxFit.contain,
              ),
              border: Border.all(
                color: Colors.grey,
                width: 1,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ]),
      ),
    ]);
  }
}
