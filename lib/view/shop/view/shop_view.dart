import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:online_groceries_app/product/init/network/network_product.dart';
import 'package:online_groceries_app/product/widget/card/groceries_card.dart';
import 'package:online_groceries_app/view/shop/service/shop_service.dart';
import 'package:online_groceries_app/view/shop/viewmodel/shop_view_model.dart';
import '../../../../product/constant/image_enum.dart';
import '../../../../product/constant/project_padding.dart';
import '../../../../product/widget/textfield/search_text_field.dart';

class ShopView extends StatefulWidget {
  const ShopView({Key? key}) : super(key: key);

  @override
  _ShopViewState createState() => _ShopViewState();
}

class _ShopViewState extends State<ShopView> {
  final TextEditingController _searchTextController = TextEditingController();
  late final ShopViewModel _shopViewModel;
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _shopViewModel.getAllProductDetails();
  }

  @override
  void initState() {
    super.initState();
    _shopViewModel = ShopViewModel(ShopService(NetworkProduct.instance.networkManager));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(context),
      body: Observer(
        builder: (_) {
          return _shopViewModel.isLoading
              ? const Center(child: CircularProgressIndicator())
              : SingleChildScrollView(
                  child: Column(children: [
                  Padding(
                    padding: const ProjectPadding.allLow(),
                    child: Column(children: [
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
                    ]),
                  ),
                  SizedBox(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _shopViewModel.productDetails.length,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            GroceriesCard(
                              title: _shopViewModel.productDetails[index].productName ?? '',
                              subTitle: _shopViewModel.productDetails[index].productDetail ?? '',
                              unitPrice: _shopViewModel.productDetails[index].unitPrice.toString(),
                              imgPath: _shopViewModel.productDetails[index].imageUrl ?? '',
                            )
                          ],
                        );
                      },
                    ),
                  )
                ]));
        },
      ),
    );
  }

  AppBar _appbar(BuildContext context) {
    return AppBar(
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
    );
  }
}
