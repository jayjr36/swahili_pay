import 'package:flutter/material.dart';
import 'package:gpay/models/category_icon.dart';
import 'package:gpay/models/category_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: AppBar(
          backgroundColor: Colors.blue[900],
          leading: const Icon(
            Icons.search,
            color: Colors.white,
          ),
          title: const Center(
            child: Icon(
              Icons.scanner_rounded,
              color: Colors.white,
            ),
          ),
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            )
          ],
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16.0),
              bottomRight: Radius.circular(16.0),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Row(
                    children: [
                      // Text content on the left
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Up to 20% cashback on bill payments',
                              style: TextStyle(
                                color: Colors.blue[900],
                                fontSize: 16, // Larger font for emphasis
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(
                                height:
                                    8), // Space between headline and description
                            Text(
                              'Quick and assured payments from anywhere at anytime.',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.blue[700],
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(width: 16), // Space between text and image
                      // Image on the right
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                            8), // Rounded corners for the image
                        child: Image.asset(
                          'assets/images/payment.jpg',
                          height: 80, // Fixed height for the image
                          width: 80, // Fixed width for the image
                          fit: BoxFit.cover, // Ensure the image fits nicely
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    textAlign: TextAlign.center,
                    "  Transfer Money",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(10),
                              child: const Icon(Icons.phone_android,
                                  color: Colors.white),
                            ),
                            const Text(
                                textAlign: TextAlign.center,
                                "Mobile Transfer",
                                style: TextStyle(fontSize: 10))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(10),
                              child: const Icon(Icons.account_balance,
                                  color: Colors.white),
                            ),
                            const Text(
                                textAlign: TextAlign.center,
                                "Bank Transfer",
                                style: TextStyle(fontSize: 10))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(10),
                              child:
                                  const Icon(Icons.person, color: Colors.white),
                            ),
                            const Text(
                                textAlign: TextAlign.center,
                                "Self Transfer",
                                style: TextStyle(fontSize: 10))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {},
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.blue[900],
                                  borderRadius: BorderRadius.circular(10)),
                              padding: const EdgeInsets.all(10),
                              child: const Icon(Icons.query_builder,
                                  color: Colors.white),
                            ),
                            const Text(
                                textAlign: TextAlign.center,
                                "Check Balance",
                                style: TextStyle(fontSize: 10))
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '  Payment Categories',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                ),
              ),
              const Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  CategoryIcon(Icons.mobiledata_off_rounded, "Mobile Recharge"),
                  CategoryIcon(Icons.bolt, "Electricity"),
                  CategoryIcon(Icons.live_tv_outlined, "DTH"),
                  CategoryIcon(
                      Icons.local_gas_station_outlined, "Fasttag Recharge"),
                  CategoryIcon(Icons.play_arrow_outlined, "Google Play"),
                  CategoryIcon(Icons.credit_card, "Credit Card Bill"),
                  CategoryIcon(Icons.add, "More"),
                ],
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '  Business and Bills',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                ),
              ),
              const Wrap(
                spacing: 20,
                runSpacing: 20,
                children: [
                  CategoryImage("assets/images/tanesco.png", "TANESCO"),
                  CategoryImage("assets/images/ttcl.png", "TTCL"),
                  CategoryImage("assets/images/azam.png", "AzamTV"),
                  CategoryImage("assets/images/oryx.png", "ORYX"),
                  CategoryImage("assets/images/DSTV.png", "DSTV"),
                  CategoryImage("assets/images/dawasa.png", "DAWASA"),
                  CategoryImage("assets/images/add.png", "More"),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
