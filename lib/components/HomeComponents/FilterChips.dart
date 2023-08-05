import 'package:flutter/material.dart';

class FilterChips extends StatefulWidget {
  const FilterChips({super.key});

  @override
  State<FilterChips> createState() => _FilterChipsState();
}

class _FilterChipsState extends State<FilterChips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 100,
        itemBuilder: (c, i) {
          return Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              "item ke $i",
              style: TextStyle(
                backgroundColor: Colors.amber,
              ),
            ),
          );
        },
      ),
    );
  }
}
