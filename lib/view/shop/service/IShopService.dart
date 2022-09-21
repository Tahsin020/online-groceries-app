import 'package:online_groceries_app/view/shop/model/product_detail_model.dart';
import 'package:vexana/vexana.dart';

abstract class IShopService {
  final INetworkManager networkManager;
  
  IShopService(this.networkManager);
  
  Future<List<ProductDetail>?> getAllProductDetails();
}
