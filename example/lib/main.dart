import 'package:animated_search/animated_search.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Animated Search'),
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

  final TextEditingController _textEditingController = TextEditingController();


  String _searchText = '';

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions:   [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: AnimatedSearch(
              textEditingController: _textEditingController,
              iconColor: Colors.red,
              cursorColor: Colors.black,
                decoration: const InputDecoration(
                  hintText: 'hello',
                  hintStyle: TextStyle(color: Colors.yellow),
                  border: InputBorder.none
                ),
              onChanged: (String value) {
                setState(() {
                  _searchText = value;
                });
              },
            ),
          ),
          // AnimatedSearch(
          //   width: 1.0,
          //   iconColor: Colors.red,
          //   cursorColor: Colors.black,
          //   decoration: InputDecoration(
          //     hintText: 'hello',
          //     hintStyle: TextStyle(color: Colors.yellow)
          //   ),
          // )
        ],
      ),
      body: Center(
        child:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: AnimatedSearch(
                textEditingController: _textEditingController,
                onChanged: (String value) {
                  setState(() {
                    _searchText = value;
                  });
                },
              ),
            ),
            Text('Current search text: $_searchText'),
          ],
        )
      ),// This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
