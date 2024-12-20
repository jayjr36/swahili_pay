import 'package:flutter/material.dart';

class BankTransfer extends StatelessWidget {
  const BankTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bank Transfer'),
      ),
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
              hintText: 'Account Number',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Re-enter Account Number',
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              hintText: 'Recipient Name',
            ),
          ),
          const Spacer(),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              child: const Text('Continue'),
            ),
          ),
          const Text(
            'this information will be saved as per SwahiliPay Terms of Service and Privacy Policy',
            style: TextStyle(color: Colors.grey, fontSize: 12),
          )
        ],
      ),
    );
  }
}
