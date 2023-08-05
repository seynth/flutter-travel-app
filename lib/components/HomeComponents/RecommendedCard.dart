import 'package:flutter/material.dart';

class RecommendedCard extends StatefulWidget {
  const RecommendedCard({super.key});

  @override
  State<RecommendedCard> createState() => _RecommendedCardState();
}

class _RecommendedCardState extends State<RecommendedCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (c, i) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: Container(
              width: MediaQuery.of(context).size.width * 0.80,
              color: Colors.orange,
              child: Center(
                child: Text("item ke ${i + 1}"),
              ),
            ),
          );
        },
      ),
    );
  }
}
