import 'package:mobx/mobx.dart';
import 'package:online_groceries_app/view/shop/service/IShopService.dart';

import '../model/product_detail_model.dart';

part 'shop_view_model.g.dart';

class ShopViewModel = _ShopViewModelBase with _$ShopViewModel;

abstract class _ShopViewModelBase with Store {
  final IShopService shopService;

  _ShopViewModelBase(this.shopService);

  @observable 
  bool isLoading=false;

  @observable
  List<ProductDetail> productDetails=[];

  @action 
  void _changeLoading(){
    isLoading=!isLoading;
  }

  @action
  Future getAllProductDetails() async {
    _changeLoading();
    final response =await shopService.getAllProductDetails();
    _changeLoading(); 
    productDetails=response ?? []; 
  }


}