import 'package:online_groceries_app/view/shop/model/product_detail_model.dart';
import 'package:vexana/vexana.dart';

import 'IShopService.dart';

class ShopService extends IShopService {
  ShopService(super.networkManager);

  final String token =
      '&apikey=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InlsZnlibXdybHhzeHl3ZW9uZWRoIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NjMyMzkwNjAsImV4cCI6MTk3ODgxNTA2MH0.l_baic2hlZI1A1ymizGSzGyB5laPAGbmEq_71TkAURo';

  @override
  Future<List<ProductDetail>?> getAllProductDetails() async {
    final response = await networkManager.send<ProductDetail, List<ProductDetail>>(
        "products?select=*,brandId(*),categoryId(*)$token",
        parseModel: ProductDetail(),
        method: RequestType.GET);
    return response.data;
  }

}
