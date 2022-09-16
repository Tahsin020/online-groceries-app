import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/constant/image_enum.dart';
import 'package:online_groceries_app/product/constant/project_padding.dart';

class GroceriesCard extends StatefulWidget {
  const GroceriesCard({Key? key}) : super(key: key);

  @override
  _GroceriesCardState createState() => _GroceriesCardState();
}

class _GroceriesCardState extends State<GroceriesCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const ProjectPadding.allMid(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Center(child: ImageEnums.banana.toImage),
            ),
            Text("data")
          ],
        ),
      ),
    );
  }
}
