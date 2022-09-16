import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:online_groceries_app/view/account/view/account_view.dart';
import 'package:online_groceries_app/view/cart/view/cart_view.dart';
import 'package:online_groceries_app/view/explore/view/explore_view.dart';
import 'package:online_groceries_app/view/favourite/view/favourite_view.dart';
import 'package:online_groceries_app/view/shop/view/shop_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          bottomNavigationBar: BottomAppBar(
            clipBehavior: Clip.hardEdge,
            notchMargin: 10,
            child: TabBar(
                indicatorPadding: const EdgeInsets.all(10),
                indicatorColor: Theme.of(context).primaryColor,
                automaticIndicatorColorAdjustment: true,
                splashBorderRadius: BorderRadius.circular(40),
                tabs: const [
                  Tab(
                    text: 'Shop',
                    icon: Icon(Icons.add_shopping_cart_outlined),
                  ),
                  Tab(
                    text: 'Explore',
                    icon: Icon(Icons.explore_outlined),
                  ),
                  Tab(
                    text: 'Cart',
                    icon: Icon(Icons.shopping_cart),
                  ),
                  Tab(
                    text: 'Favourite',
                    icon: Icon(Icons.favorite_border_outlined),
                  ),
                  Tab(
                    text: 'Account',
                    icon: Icon(Icons.manage_accounts_outlined),
                  ),
                ]),
          ),
          body: TabBarView(children: [ShopView(), ExploreView(), CartView(), FavouriteView(), AccountView()]),
        ));
  }
}
