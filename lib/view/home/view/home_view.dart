import 'package:flutter/material.dart';
import 'package:online_groceries_app/product/constant/image_enum.dart';
import 'package:online_groceries_app/product/constant/project_padding.dart';
import 'package:online_groceries_app/product/widget/card/custom_card.dart';
import 'package:online_groceries_app/product/widget/textfield/search_text_field.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
          child: Padding(
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
                          style: Theme.of(context).textTheme.headline6?.copyWith(color: Theme.of(context).primaryColor),
                        )),
                  ],
                ),
                CustomCard(),

              ],
            ),
          ),
        ));
  }
}
