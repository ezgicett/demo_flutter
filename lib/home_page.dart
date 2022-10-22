import 'package:flutter/material.dart';
import 'package:workshop_1_flutter/product_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 32, top: 32, right: 32, bottom: 16),
                child: Row(
                  children: [
                    const CircleAvatar(
                      child: Text("aa"),
                      radius: 30.0,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hello", //why not can't allign with textAlign?
                          ),
                          Text(
                            "Valentino",
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.add_alert_sharp))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search Furniture",
                          fillColor: Color.fromARGB(255, 241, 237, 237),
                          filled: true,
                          labelStyle: TextStyle(),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10.0),
                            borderSide: const BorderSide(
                                width: 3,
                                color: Colors.transparent), //<-- SEE HERE
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Color(0xFF263238),
                        shape: RoundedRectangleBorder(),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.settings),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 32, right: 32),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset("assets/images/chair.jpg")),
                  ),
                  Positioned(
                    left: 40,
                    bottom: 100,
                    child: Column(
                      children: const [
                        Text(
                          "Black Friday",
                          style: TextStyle(fontSize: 30),
                        ),
                        Text(
                          "25% off for all item",
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 32),
                child: Row(
                  children: [
                    const Expanded(
                      child: Text(
                        "Popular",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black87,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text("Show All"),
                    ),
                  ],
                ),
              ),
              //horizontal listView
              Padding(
                padding: const EdgeInsets.all(32.0),
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
              // Padding(
              //   padding: const EdgeInsets.all(32.0),
              //   child: Container(
              //     height: 200,
              //     child: ListView(
              //       shrinkWrap: true,
              //       scrollDirection: Axis.horizontal,
              //       children: [
              //         itemHorizontally(),
              //         SizedBox(
              //           width: 20,
              //         ),
              //         //second container
              //         itemHorizontally(),
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
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
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset( // rowla wraplersem alanı büyür akayar
              "assets/images/chair2.jpg", // neden align sağa çekmiyor?
              //fit: BoxFit.cover,
              height: 100,
            ),
            Card(
              color: Color(0xFFD6D6D6),
              //margin: EdgeInsets.only(left: 0),
              shadowColor: Colors.green,
              elevation: 8,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Ink(
                      decoration: const ShapeDecoration(
                        color: Colors.red,
                        shape: RoundedRectangleBorder(),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.favorite),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ),
                    const Text(
                      "Sabeb Summer Chair",
                      style: TextStyle(
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

Widget itemHorizontally() {
  return Container(
    height: 400,
    width: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.yellow,
    ),
    child: SingleChildScrollView(
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Image.asset("assets/images/chair.jpg"),
          Container(
            //margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.red,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Icon(Icons.favorite),
                  Text("AAAAAAAAAAAAAA"),
                  Text("bbbbbb"),
                  SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
