import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:workshop_1_flutter/core/base/base_view.dart';
import 'package:workshop_1_flutter/core/constants/padding.dart';
import 'package:workshop_1_flutter/core/init/theme/app_theme.dart';
import 'package:workshop_1_flutter/view/views/product/product_page.dart';
import 'package:workshop_1_flutter/translations/locale_keys.g.dart';
import '../../../core/constants/color_const.dart';
import '../../../core/constants/image.dart';
import '../../../core/constants/radius.dart';

part 'sub_view/sub_widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<FocusNode> nodes = [FocusNode()];

  @override
  Widget build(BuildContext context) {
    return BaseView(
      onPageBuilder: (context) => body(context, nodes),
      focusNodes: nodes,
    );
  }
}

Widget body(BuildContext context, List<FocusNode> node) {
  return Scaffold(
    body: SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            persona(),
            searchProduct(node.first),
            middleImage(context),
            const SizedBox(
              height: 10,
            ),
            textOnly(),
            //horizontal listView
            Padding(
              // widget yap
              padding: PagePadding.all(),
              child: Container(
                height: 320,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    itemCard(context),
                    SizedBox(
                      width: 20,
                    ),
                    itemCard(context),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
