import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final List<String> entries = <String>['Apples', 'Bananas', 'Bread','Milk','Eggs'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: const Text("My Shopping List"),

        elevation: 7,
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(onPressed: ()
          {
            const snackBar = SnackBar(
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.only(bottom: 400.0),

                content: Text('Cart is empty')
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);

          },
              icon: Icon(Icons.shopping_cart))
        ],
      ),
      body: ListView.builder(

        itemCount: entries.length,
        itemBuilder: (context, index) {
          final item = entries[index];

          return ListTile(
            leading: const Icon(Icons.cabin),
            title: Text( entries[index]),
          );
        },
      ),





    );
  }
}
