import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/constant/image_enum.dart';
import 'package:online_groceries_app/product/constant/project_padding.dart';
import 'package:online_groceries_app/product/widget/button/add_to_car_button.dart';

class CustomCard extends StatefulWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Padding(
        padding: const ProjectPadding.allMid(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageEnums.banana.toImage,
            Text(
              "Organic Bananas",
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(fontWeight: FontWeight.bold, color: Theme.of(context).colorScheme.primary),
            ),
            Text(
              "7pcs, Priceg",
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Row(
              children: [
                Text(
                  '€4.99',
                ),
                AddToCarButton()
              ],
            )
          ],
        ),
      ),
    );
  }
}
