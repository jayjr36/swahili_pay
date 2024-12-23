import 'package:flutter/material.dart';
import 'package:gpay/home.dart';

class OtpScreen extends StatelessWidget {
  final String? phone;

  const OtpScreen({super.key, this.phone});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Verify it's you",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              "We have sent a code to ${phone ?? '0123456'}",
              style: const TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            const TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "Enter OTP",
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              child:   ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) =>  Home()));
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("OTP Verified")),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[900]
              ),
              child: const Text("CONFIRM", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
            ),
            ),
          
          ],
        ),
      ),
    );
  }
}
