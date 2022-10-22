import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Product Detail"),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Image.asset(
                "assets/images/chair2.jpg",
                height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit
                    .fill, // ?? neden width ve fill aynı anda olmak zorunda
              ),
              Expanded(
                child: Card(
                  margin: const EdgeInsets.all(16.0),
                  color: Colors.white,
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          children: const [
                            Expanded(
                                child: Text(
                              "Sabeb Summer Chair",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            )),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text("4.5"),
                          ],
                        ),
                        const Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "IKAE",
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
                                  onPressed: () {},
                                  backgroundColor: Colors.grey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: Icon(Icons.shopping_basket)),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              flex: 4,
                              child: FloatingActionButton(
                                  onPressed: () {},
                                  backgroundColor: Colors.blueGrey,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15),
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
