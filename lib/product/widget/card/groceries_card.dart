import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/widget/button/add_to_car_button.dart';

class GroceriesCard extends StatefulWidget {
  const GroceriesCard({Key? key, required this.title, required this.subTitle, required this.unitPrice, this.onTap, required this.imgPath}) : super(key: key);
  final String title;
  final String subTitle;
  final String unitPrice;
  final Function()? onTap;
  final String imgPath;

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
            Image.network(widget.imgPath),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text(
                  widget.subTitle,
                  textAlign: TextAlign.start,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(widget.unitPrice),
                AddToCarButton(
                  onTap: widget.onTap,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
