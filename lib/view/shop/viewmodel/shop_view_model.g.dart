// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shop_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ShopViewModel on _ShopViewModelBase, Store {
  late final _$isLoadingAtom =
      Atom(name: '_ShopViewModelBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$productDetailsAtom =
      Atom(name: '_ShopViewModelBase.productDetails', context: context);

  @override
  List<ProductDetail> get productDetails {
    _$productDetailsAtom.reportRead();
    return super.productDetails;
  }

  @override
  set productDetails(List<ProductDetail> value) {
    _$productDetailsAtom.reportWrite(value, super.productDetails, () {
      super.productDetails = value;
    });
  }

  late final _$getAllProductDetailsAsyncAction =
      AsyncAction('_ShopViewModelBase.getAllProductDetails', context: context);

  @override
  Future<dynamic> getAllProductDetails() {
    return _$getAllProductDetailsAsyncAction
        .run(() => super.getAllProductDetails());
  }

  late final _$_ShopViewModelBaseActionController =
      ActionController(name: '_ShopViewModelBase', context: context);

  @override
  void _changeLoading() {
    final _$actionInfo = _$_ShopViewModelBaseActionController.startAction(
        name: '_ShopViewModelBase._changeLoading');
    try {
      return super._changeLoading();
    } finally {
      _$_ShopViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
productDetails: ${productDetails}
    ''';
  }
}
