import 'package:flutter/material.dart';

class PictureCard extends StatelessWidget {
  const PictureCard({
    super.key,
    required this.imageURL,
    required this.label,
    required this.title,
    required this.description,
  });

  final String imageURL;
  final String label;
  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: Padding(
        padding: EdgeInsetsGeometry.all(12), 
        child: Column(
          children: [
            Stack(),
            SizedBox(height: 8),
            Container(
              child: Text(description),
            )
          ],
        ),
      ),
    );
  }
}
