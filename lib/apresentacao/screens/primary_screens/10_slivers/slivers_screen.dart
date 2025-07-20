import 'package:flutter/material.dart';
import 'package:skill_playground/apresentacao/cards/card_performance_screen.dart';

class CustomSlivers extends StatelessWidget {
  const CustomSlivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: IconThemeData(color: Colors.white),
        title: Text("Custom Slivers", style: TextStyle(color: Colors.white)),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildBuilderDelegate((BuildContext context, index) {
              return ListTile(title: Text("Item $index"));
            }, childCount: 11),
          ),
          SliverToBoxAdapter(
            child: Padding(padding: EdgeInsets.all(10), child: CardPerformanceScreen()),
          ),
          SliverToBoxAdapter(
            child: Padding(padding: EdgeInsets.all(10), child: CardPerformanceScreen()),
          ),
          SliverToBoxAdapter(
            child: Padding(padding: EdgeInsets.all(10), child: CardPerformanceScreen()),
          ),
        ],
      ),
    );
  }
}
