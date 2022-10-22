// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "hello": "Hello",
  "valentino": "Valentino",
  "searchFurniture": "SearcH Product",
  "blackFriday": "Black Friday",
  "discountItem": "25% off for all item",
  "popular": "Popular",
  "showAll": "Show All",
  "chairName": "Sabeb Summer Chair",
  "productDetail": "Product Detail",
  "starNumber": "4.5",
  "IKAE": "IKAE"
};
static const Map<String,dynamic> tr = {
  "hello": "Merhaba",
  "valentino": "Valentino",
  "searchFurniture": "Eşya Ara",
  "blackFriday": "Kara Cuma",
  "discountItem": "Tüm Ürünlerde %25 İndirim",
  "popular": "Popüler",
  "showAll": "Hepsini Göster",
  "chairName": "Sabeb Summer Chair",
  "productDetail": "Ürün Detayı",
  "starNumber": "4.5",
  "IKAE": "IKAE"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "tr": tr};
}
