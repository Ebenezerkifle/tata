import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Speech to Text Converter"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Speech to Text Converte r"),
            ElevatedButton(onPressed: () {}, child: const Text("Start")),
            ElevatedButton(onPressed: () {}, child: const Text("Stop"))
          ],
        ),
      ),
    );
  }
}
