import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:workshop_1_flutter/core/constants/color_const.dart';
import 'package:workshop_1_flutter/core/constants/padding.dart';

import 'core/constants/image.dart';
import 'core/constants/radius.dart';
import 'translations/locale_keys.g.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst().blueGrey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: ColorConst().transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text(LocaleKeys.productDetail.tr()),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Image.asset(
                AllImages().chair2,
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit
                    .fill, // ?? neden width ve fill aynı anda olmak zorunda
              ),
              Expanded(
                child: Card(
                  margin: PagePadding.cardColumn(),
                  color: ColorConst().white,
                  elevation: 8.0,
                  shape:
                      RoundedRectangleBorder(borderRadius: WidgetRadius.card()),
                  child: Padding(
                    padding: PagePadding.card(),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text(
                              LocaleKeys.chairName.tr(),
                              style: const TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                            Icon(
                              Icons.star,
                              color: ColorConst().yellow,
                            ),
                            Text("4.5"),
                          ],
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            LocaleKeys.IKAE.tr(),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                              "Ahsdfjshfjksdfhhsdfsf\nddjfskfsfsdfsfs\ndfjhdsjhkfsffsdfdsf\ndjhfskfs"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: FloatingActionButton(
                                  heroTag: "btn1",
                                  onPressed: () {},
                                  backgroundColor: ColorConst().grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: WidgetRadius.floatingButton(),
                                  ),
                                  child: Icon(Icons.shopping_basket)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 4,
                              child: FloatingActionButton(
                                  heroTag: "btn2",
                                  onPressed: () {},
                                  backgroundColor: ColorConst().blueGrey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: WidgetRadius.floatingButton(),
                                  ),
                                  child: Text("Buy\$125.00")),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
