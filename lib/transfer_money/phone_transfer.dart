import 'package:flutter/material.dart';


class PhoneTransfer extends StatelessWidget {
  const PhoneTransfer({super.key});

  static const List<String> countryCodes = ['+254', '+255', '+256', '+257', '+250', '+251'];

  @override
  Widget build(BuildContext context) {
    String selectedCountryCode = countryCodes[0];
    TextEditingController phoneController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Text(
              'Enter Phone Number',
              style: TextStyle(color: Colors.blue, fontSize: 16),
            ),
            const Text(
              'Pay someone using verified phone number',
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            Row(
              children: [
                DropdownButton<String>(
                  value: selectedCountryCode,
                  onChanged: (String? newValue) {
                    if (newValue != null) {
                      selectedCountryCode = newValue;
                    }
                  },
                  items: countryCodes.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                Expanded(
                  child: TextField(
                    controller: phoneController,
                    keyboardType: TextInputType.phone,
                    decoration: const InputDecoration(
                      hintText: 'Phone Number',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}