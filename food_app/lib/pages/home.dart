import 'package:flutter/material.dart';
import 'package:food_app/pages/details.dart';
import 'package:food_app/widgets/widget_support.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool icecream = false, pizza = false, hamburguesa = false, bebidas = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          margin: const EdgeInsets.only(
            top: 50,
            left: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hello Omar', style: AppWidget.boldTextFeildStyle()),
                  Container(
                    margin: const EdgeInsets.only(right: 20),
                    padding: const EdgeInsets.all(3.8),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Container(
                      child: const Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 28,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text(
                'Delicious Food',
                style: AppWidget.headLineTextFeildStyle(),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                'Discover and Get Great Food',
                style: AppWidget.lightLineTextFeildStyle(),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                  margin: const EdgeInsets.only(right: 20), child: showItem()),
              const SizedBox(
                height: 20.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Details()));
                      },
                      child: Container(
                        margin: const EdgeInsets.all(4),
                        child: Material(
                          elevation: 7.0,
                          child: Container(
                            padding: const EdgeInsets.all(14.0),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(80),
                                    child: Image.asset(
                                      "assets/images/alitas.jpeg",
                                      height: 150,
                                      width: 150,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  Text(
                                    "Veggie Taco Hash",
                                    style: AppWidget.semiBoldTextFeildStyle(),
                                  ),
                                  Text(
                                    "Fresh and Healthy",
                                    style: AppWidget.lightLineTextFeildStyle(),
                                  ),
                                  const SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    "\$25",
                                    style: AppWidget.semiBoldTextFeildStyle(),
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15.0,
                    ),
                    Container(
                      margin: const EdgeInsets.all(4),
                      child: Material(
                        elevation: 7.0,
                        child: Container(
                          padding: const EdgeInsets.all(14.0),
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(80),
                                  child: Image.asset(
                                    "assets/images/ensalda.webp",
                                    height: 150,
                                    width: 150,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text(
                                  "Mix Veg Salad",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                ),
                                Text(
                                  "Spice with Onion",
                                  style: AppWidget.lightLineTextFeildStyle(),
                                ),
                                const SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  "\$16",
                                  style: AppWidget.semiBoldTextFeildStyle(),
                                )
                              ]),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10.0),
                child: Material(
                  elevation: 5.9,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Image.asset(
                            "assets/images/ensalda.webp",
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                'Mediterraneo Chiken Salad',
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                'Honey goot cheese ',
                                style: AppWidget.lightLineTextFeildStyle(),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                '\$28',
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.only(right: 10.0, bottom: 20),
                child: Material(
                  elevation: 5.9,
                  borderRadius: BorderRadius.circular(20.0),
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Image.asset(
                            "assets/images/ensalda.webp",
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                'Mediterraneo Chiken Salad',
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ),
                            const SizedBox(
                              height: 5.0,
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                'Honey goot cheese ',
                                style: AppWidget.lightLineTextFeildStyle(),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2,
                              child: Text(
                                '\$28',
                                style: AppWidget.semiBoldTextFeildStyle(),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget showItem() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = true;
              pizza = false;
              hamburguesa = false;
              bebidas = false;
            });
          },
          child: Material(
            elevation: icecream ? 5.0 : 10.8,
            borderRadius: BorderRadius.circular(6.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/heladoI.png",
                height: icecream ? 52 : 48,
                width: icecream ? 52 : 48,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = true;
              hamburguesa = false;
              bebidas = false;
            });
          },
          child: Material(
            elevation: pizza ? 5.0 : 10.8,
            borderRadius: BorderRadius.circular(6.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/pizzaI.png",
                height: pizza ? 52 : 48,
                width: pizza ? 52 : 48,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = false;
              hamburguesa = true;
              bebidas = false;
            });
          },
          child: Material(
            elevation: hamburguesa ? 5.0 : 10.8,
            borderRadius: BorderRadius.circular(6.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/hamburguesaI.jpg",
                height: hamburguesa ? 52 : 48,
                width: hamburguesa ? 52 : 48,
              ),
            ),
          ),
        ),
        GestureDetector(
          onTap: () {
            setState(() {
              icecream = false;
              pizza = false;
              hamburguesa = false;
              bebidas = true;
            });
          },
          child: Material(
            elevation: bebidas ? 5.0 : 10.8,
            borderRadius: BorderRadius.circular(6.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                "assets/images/bebidasI.png",
                height: bebidas ? 52 : 48,
                width: bebidas ? 52 : 48,
              ),
            ),
          ),
        )
      ],
    );
  }
}
