import 'package:flutter/material.dart';

import '../../../../product/constant/image_enum.dart';
import '../../../../product/constant/project_padding.dart';
import '../../../../product/widget/card/groceries_card.dart';
import '../../../../product/widget/textfield/search_text_field.dart';

class ShopView extends StatefulWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  _ShopViewState createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  final TextEditingController _searchTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(width: 30, child: ImageEnums.carrot.carrotToImage),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.place,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  Text(
                    "Dhaka, Banassre",
                    style: Theme.of(context).textTheme.subtitle2?.copyWith(
                        fontSize: 18, fontWeight: FontWeight.w600, color: Theme.of(context).colorScheme.onSurface),
                  ),
                ],
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const ProjectPadding.allLow(),
                child: Column(
                  children: [
                    SearchTextField(searchController: _searchTextController),
                    Padding(
                      padding: const ProjectPadding.allVertical(),
                      child: Card(
                        child: ImageEnums.card_banner.toImage,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Exclusive Offer",
                          style: Theme.of(context).textTheme.subtitle2?.copyWith(
                                fontSize: 24,
                              ),
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "See all",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  ?.copyWith(color: Theme.of(context).primaryColor),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,
                  itemBuilder: (context, index) {
                    return Row(
                      children: const [
                        GroceriesCard(),
                        GroceriesCard(),
                        GroceriesCard(),
                        GroceriesCard(),
                        GroceriesCard(),
                        GroceriesCard(),
                        GroceriesCard(),
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
