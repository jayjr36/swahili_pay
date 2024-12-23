import 'package:flutter/material.dart';

class PhoneField extends StatefulWidget {
  const PhoneField({super.key});

  @override
  _PhoneFieldState createState() => _PhoneFieldState();
}

class _PhoneFieldState extends State<PhoneField> {
  String selectedLanguage = "English";
  String selectedCountryCode = "+255";
  final TextEditingController phoneController = TextEditingController();

  final List<Map<String, String>> languages = [
    {'flag': '🇹🇿', 'name': 'Swahili', 'icon': '🌐'},
    {'flag': '🇺🇸', 'name': 'English', 'icon': '🌐'},
    {'flag': '🇮🇳', 'name': 'Hindi', 'icon': '🌐'},
    {'flag': '🇰🇪', 'name': 'Swahili', 'icon': '🌐'},
  ];

  final List<Map<String, String>> countryCodes = [
    {'flag': '🇹🇿', 'code': '+255', 'name': 'Tanzania'},
    {'flag': '🇰🇪', 'code': '+254', 'name': 'Kenya'},
    {'flag': '🇮🇳', 'code': '+91', 'name': 'India'},
    {'flag': '🇺🇸', 'code': '+1', 'name': 'America'},
    {'flag': '🇺🇬', 'code': '+256', 'name': 'Uganda'},
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade400),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          DropdownButton<String>(
            value: selectedCountryCode,
            items: countryCodes.map((country) {
              return DropdownMenuItem(
                value: country['code'],
                child: Row(
                  children: [
                    Text(country['flag'] ?? ''), // Display flag
                    const SizedBox(width: 8),
                    Text(country['code'] ?? ''), // Display code
                  ],
                ),
              );
            }).toList(),
            onChanged: (value) {
              setState(() {
                selectedCountryCode = value!;
              });
            },
            underline: const SizedBox(),
          ),
          const VerticalDivider(width: 1, color: Colors.grey),
          Expanded(
            child: TextField(
              controller: phoneController,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Phone number",
                contentPadding: EdgeInsets.symmetric(vertical: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
