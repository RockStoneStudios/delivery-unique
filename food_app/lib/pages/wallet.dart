import 'package:flutter/material.dart';
import 'package:food_app/widgets/widget_support.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  Map<String, dynamic>? paymentIntent;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.only(top: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Material(
              elevation: 2.3,
              child: Container(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text(
                    'Wallet',
                    style: AppWidget.headLineTextFeildStyle(),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: size.width,
              decoration: const BoxDecoration(color: Color(0xfff2f2f2)),
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                children: [
                  Image.asset("assets/images/wallet.png",
                      height: 80, width: 80, fit: BoxFit.cover),
                  const SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Your Wallet",
                        style: AppWidget.lightLineTextFeildStyle(),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "\$" + "100",
                        style: AppWidget.boldTextFeildStyle(),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Add money",
                style: AppWidget.boldTextFeildStyle(),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffe9e2e2)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "\$" + "100",
                    style: AppWidget.semiBoldTextFeildStyle(),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffe9e2e2)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "\$" + "200",
                    style: AppWidget.semiBoldTextFeildStyle(),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffe9e2e2)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "\$" + "500",
                    style: AppWidget.semiBoldTextFeildStyle(),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(0xffe9e2e2)),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "\$" + "1000",
                    style: AppWidget.semiBoldTextFeildStyle(),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 22),
              padding: const EdgeInsets.symmetric(vertical: 12),
              width: size.width,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  color: Color(0xff088080)),
              child: const Center(
                child: Text(
                  "Add Money",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w800,
                      fontFamily: 'Poppins'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
