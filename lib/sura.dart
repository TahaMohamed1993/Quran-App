import 'package:flutter/material.dart';

class Sura {
  final String name;
  final List<String> imagePaths;

  Sura({required this.name, required this.imagePaths, required int index});

  get index => null;
}

class SuraPage extends StatelessWidget {
  final Sura sura;
  final List<String>? imagePaths;
  const SuraPage({
    super.key,
    required this.sura,
    this.imagePaths,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(sura.name),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: sura.imagePaths.length,
        itemBuilder: (BuildContext context, int index) {
          return Image.asset(sura.imagePaths[index]);
        },
      ),
    );
  }
}
