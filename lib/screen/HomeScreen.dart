import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:travel/components/HomeComponents/CategoriesCard.dart';
import 'package:travel/components/HomeComponents/FilterChips.dart';
import 'package:travel/components/HomeComponents/RecommendedCard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          SliverAppBar.large(
            leading: IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {},
            ),
            title: Text("Discover the 🌏"),
            centerTitle: true,
            actions: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(
                    Icons.person,
                    size: 24,
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "Recommended",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: size.height * 0.50,
              width: size.width,
              child: RecommendedCard(),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 8),
              child: Text(
                "Categories",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: size.width,
              height: 40,
              margin: EdgeInsets.fromLTRB(0, 16, 0, 16),
              child: FilterChips(),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: size.width,
              height: 200,
              margin: EdgeInsets.only(bottom: 16),
              child: CategoriesCard(),
            ),
          ),
          // SliverList(
          //   delegate: SliverChildBuilderDelegate(childCount: 100, (c, i) {
          //     return ListTile(
          //       title: Text("item ke ${i + 1}"),
          //     );
          //   }),
          // )
        ],
      ),
      bottomNavigationBar: GNav(
        backgroundColor: Colors.black,
        color: Colors.white,
        activeColor: Colors.orange,
        gap: 8,
        tabs: [
          GButton(
            icon: Icons.home_outlined,
            text: "Home",
          ),
          GButton(
            icon: Icons.explore_outlined,
            text: "Explore",
          ),
          GButton(
            icon: Icons.favorite_border,
            text: "Favourite",
          ),
          GButton(
            icon: Icons.person,
            text: "Setyo",
          ),
        ],
      ),
    );
  }
}
