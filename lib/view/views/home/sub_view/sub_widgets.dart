part of '../home_page.dart';

Widget persona() {
  return Padding(
    padding: PagePadding.heading(),
    child: Row(
      children: [
        CircleAvatar(
          radius: WidgetRadius.circleAvatar()
              .bottomRight
              .x, // AYRI BİR CONSTANT SINIFI MI AÇMALIYIM,YOKSA RADİUS TUTUP HEPSİNİ ORDAN MI
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                LocaleKeys.hello.tr(),
              ),
              Text(
                LocaleKeys.valentino.tr(),
              ),
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: Icon(Icons.add_alert_sharp))
      ],
    ),
  );
}

Widget searchProduct(FocusNode node) {
  return Padding(
    padding: PagePadding.all(),
    child: Row(
      children: [
        Expanded(
          child: TextField(
            focusNode: node,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              hintText: LocaleKeys.searchFurniture.tr(),
              fillColor: ColorConst().whiteIsh,
              filled: true,
              enabledBorder: OutlineInputBorder(
                borderRadius: WidgetRadius.circleAvatar(),
                borderSide: BorderSide(
                    width: 3, color: ColorConst().transparent), //<-- SEE HERE
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Ink(
          decoration: ShapeDecoration(
            color: ColorConst().greyBlue,
            shape: RoundedRectangleBorder(),
          ),
          child: IconButton(
            icon: const Icon(Icons.settings),
            color: ColorConst().white,
            onPressed: () {},
          ),
        ),
      ],
    ),
  );
}

Widget middleImage(BuildContext context) {
  return Stack(
    children: [
      Padding(
        padding: PagePadding.stack(),
        child: ClipRRect(
            borderRadius: WidgetRadius.imageCircular(),
            child: Image.asset(AllImages().chair)),
      ),
      Positioned(
        left: 40,
        bottom: 100,
        child: Column(
          children: [
            Text(
              LocaleKeys.blackFriday.tr(),
              style: Theme.of(context).textTheme.headline3,
            ), //ThemeData().textTheme.labelMedium),
            Text(
              LocaleKeys.discountItem.tr(),
              style: ThemeData().textTheme.headline2,
            ),
          ],
        ),
      ),
    ],
  );
}

Widget textOnly() {
  return Padding(
    padding: PagePadding.stack(),
    child: Row(
      children: [
        Expanded(
          child: Text(
            LocaleKeys.popular.tr(),
            style: TextStyle(
                fontSize: 20,
                color: ColorConst().black87,
                fontWeight: FontWeight.bold),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text(LocaleKeys.showAll.tr()),
        ),
      ],
    ),
  );
}

Widget itemCard(BuildContext context) {
  return GestureDetector(
    onTap: () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const ProductPage(),
        ),
      );
    },
    child: Card(
      child: Padding(
        padding: PagePadding.card(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              // rowla wraplersem alanı büyür akayar
              AllImages().chair2, // neden align sağa çekmiyor?
              //fit: BoxFit.cover,
              height: 100,
            ),
            Card(
              color: ColorConst().whiteIsh2,
              elevation: 8,
              shape: RoundedRectangleBorder(borderRadius: WidgetRadius.card()),
              child: Padding(
                padding: PagePadding.cardColumn(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Ink(
                      decoration: ShapeDecoration(
                        color: ColorConst().red,
                        shape: RoundedRectangleBorder(),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.favorite),
                        color: ColorConst().white,
                        onPressed: () {},
                      ),
                    ),
                    Text(
                      LocaleKeys.chairName.tr(),
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      "\$125",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      "fsdfsfsfsf\ndfsfsfsdfsfsfsfsfs\ndfsdjfsdfk",
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
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
