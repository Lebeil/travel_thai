import "package:flutter/material.dart";

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Design Flutter",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Voyage Thailande"),
          backgroundColor: Colors.cyan,
        ),
      ),
    );
  }
}
