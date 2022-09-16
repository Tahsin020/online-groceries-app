import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/constant/image_enum.dart';
import 'package:online_groceries_app/product/constant/project_padding.dart';
import 'package:online_groceries_app/product/widget/button/add_to_car_button.dart';

class GroceriesCard extends StatefulWidget {
  const GroceriesCard({Key? key}) : super(key: key);

  @override
  _GroceriesCardState createState() => _GroceriesCardState();
}

class _GroceriesCardState extends State<GroceriesCard> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 173,
      height: 250,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ImageEnums.banana.toImage,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Organic Banana",
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  "7pcs,Priceg",
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("€ 4.99"),
                AddToCarButton(
                  onTap: () {},
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
