import 'package:flutter/material.dart';
import 'package:freestyle/pages/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(),
        body: Center(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 40,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            'USER LOGIN',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Name',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.person,
                      ),
                    ),
                  ),
                ),
              )),
          Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Container(
                  padding: const EdgeInsets.all(5.0),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      prefixIcon: Icon(
                        Icons.lock,
                      ),
                    ),
                  ),
                ),
              )),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.check_box,
                        color: Colors.white,
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text('Remember me',
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  const Text(
                    'Forget password?',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SecondPage(),
                  ));
            },
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.white),
            ),
          )
        ])));
  }
}
