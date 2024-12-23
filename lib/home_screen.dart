import 'package:flutter/material.dart';
import 'package:gpay/models/category_icon.dart';
import 'package:gpay/models/category_image.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Column(
        children: [
          const Text("Transfer Money"),
          Row(
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    child: const Column(
                      children: [
                        Icon(Icons.phone_android, color: Colors.white),
                        Text(
                          "Mobile Transfer",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    child: const Column(
                      children: [
                        Icon(Icons.account_balance, color: Colors.white),
                        Text(
                          "Bank Transfer",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    child: const Column(
                      children: [
                        Icon(Icons.person, color: Colors.white),
                        Text(
                          "Self Transfer",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Expanded(
                child: GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[900],
                        borderRadius: BorderRadius.circular(10)),
                    padding: const EdgeInsets.all(10),
                    child: const Column(
                      children: [
                        Icon(Icons.query_builder, color: Colors.white),
                        Text(
                          "Check Balance",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const Text('Payment Categories'),
          const Wrap(
            spacing: 10,
            runSpacing: 10,
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
          Text('Business and Bills'),
          const Wrap(
            spacing: 10,
            runSpacing: 10,
            children: [
              CategoryImage(
                  "https://images.seeklogo.com/logo-png/52/1/tanesco-luku-logo-png_seeklogo-526903.png?v=638686547570000000",
                  "TANESCO"),
              CategoryImage(
                  "data:image/png;base64,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",
                  "TTCL"),
              CategoryImage(
                  "data:image/jpeg;base64,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",
                  "AzamTV"),
              CategoryImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTSSpci3r-Q9ycgFw9G4TYMUyIlzqwAt9A_XA&s",
                  "ORYX"),
              CategoryImage(
                  "data:image/png;base64,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",
                  "DSTV"),
              CategoryImage(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9McKu4Fkraod_KTIU_kOrFW3aU_A9O1GuAg&s",
                  "DAWASA"),
              CategoryImage(
                  "https://png.pngtree.com/png-vector/20190214/ourmid/pngtree-vector-plus-icon-png-image_515260.jpg",
                  "More"),
            ],
          ),
        ],
      ),
    ));
  }
}