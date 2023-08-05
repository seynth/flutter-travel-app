import 'package:flutter/material.dart';

class CategoriesCard extends StatefulWidget {
  const CategoriesCard({super.key});

  @override
  State<CategoriesCard> createState() => _CategoriesCardState();
}

class _CategoriesCardState extends State<CategoriesCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 100,
          itemBuilder: (c, i) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.90,
                color: Colors.blue,
                child: Center(
                  child: Text("item ke $i"),
                ),
              ),
            );
          }),
    );
  }
}
