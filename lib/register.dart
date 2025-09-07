import 'package:flutter/material.dart';

class Ragister extends StatefulWidget {
  const Ragister({super.key});

  @override
  _ragisterState createState() => _ragisterState();
}

class _ragisterState extends State<Ragister> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Register")),
      body: const Center(
        child: Text("This is Register Page"),
      ),
    );
  }
}
