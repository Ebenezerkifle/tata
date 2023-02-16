import 'package:flutter/material.dart';
import 'package:tata/presentation/widgets/custom_list_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contact Lists"),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: List.generate(
            22,
            (index) => CustomeListWidget(
              context: context,
              // contact: contacts[index],
            ),
          ),
        ),
      ),
    );
  }
}
