import 'package:flutter/material.dart';

// class BaseView<T extends Cubit> extends StatefulWidget {
class BaseView extends StatefulWidget {
  final Function(BuildContext context) onPageBuilder;
  final Function? onPageReady;
  final List<FocusNode>? focusNodes;
  // final T? cubit;
  const BaseView({
    Key? key,
    required this.onPageBuilder,
    this.onPageReady,
    this.focusNodes,
    //  this.cubit,
  }) : super(key: key);
  //internet var mı yok mu gösterilebilir
  @override
  _BaseViewState createState() => _BaseViewState();
}

class _BaseViewState<T extends ChangeNotifier> extends State<BaseView> {
  @override
  void initState() {
    super.initState();
    if (widget.onPageReady != null) {
      widget.onPageReady!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          if (widget.focusNodes != null) {
            for (var item in widget.focusNodes!) {
              item.unfocus();
              print("UNFOCUSS");
            }
          }
        },
        child: getChlld());
  }

  Widget getChlld() {
    return widget.onPageBuilder(context);
  }
}
