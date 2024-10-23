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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isStarred = false;

  void _toggleStar() {
    setState(() {
      _isStarred = !_isStarred;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App', style: TextStyle(
          color: Colors.white,
          fontSize: 24,
        )),
        backgroundColor: Colors.red,
        toolbarHeight: 50,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.star,
              color: _isStarred ? Colors.yellow : Colors.white,
            ),
            onPressed: _toggleStar,
          ),
          IconButton(
            icon: const Icon(
                Icons.more_vert,
                color: Colors.white),
            onPressed: () {
              // Acción al presionar el ícono de más opciones
            },
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(height: 10),
          const Text(
            'Strawberry Pavlova',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.red,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(0),
            child: Image.asset('assets/images/cake.png'),
          ),
          const SizedBox(height: 20),
          const SizedBox(height: 20),
          Column(
            children: <Widget>[
              const Text(
                'Strawberry Pavlova',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Paviova is a meringue-base dessert named after the Russian ballerine Anna Pavlova. Pavlova features a crisp crust and soft, light inside, topped with fruit and whipped cream. ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                    children: List.generate(5, (index) {
                      return const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      );
                    }),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    '170 Reviews',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Icon(Icons.kitchen, color: Colors.red),
                      SizedBox(height: 5),
                      Text('PREP:'),
                      Text('25 min'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.watch, color: Colors.red),
                      SizedBox(height: 5),
                      Text('COOK:'),
                      Text('1 hr'),
                    ],
                  ),
                  Column(
                    children: <Widget>[
                      Icon(Icons.restaurant, color: Colors.red),
                      SizedBox(height: 5),
                      Text('FEEDS:'),
                      Text('4-6'),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}