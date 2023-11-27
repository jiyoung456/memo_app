import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Directory'),
        //centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
          children: <Widget>[
            _buildGridTile('food', Icons.fastfood, context),
            _buildGridTile('study', Icons.book, context),
            _buildGridTile('place', Icons.place, context),
            _buildGridTile('news', Icons.fiber_new, context),
          ],
        ),
      ),
    );
  }

  Widget _buildGridTile(String title, IconData icon, BuildContext context) {
    return InkWell(
      onTap: () {
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon, size: 50),
            const SizedBox(height: 20),
            Text(
              title.toUpperCase(),
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}