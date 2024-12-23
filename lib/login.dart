import 'package:flutter/material.dart';
import 'package:gpay/constants.dart';
import 'package:gpay/otp_screen.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
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

  void navigateToOtpScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => OtpScreen(phone: phoneController.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(h * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Language Dropdown
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: w * 0.4,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade400),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: DropdownButton<String>(
                    value: selectedLanguage,
                    underline: const SizedBox(), 
                    isExpanded: true, 
                    items: languages.map((lang) {
                      return DropdownMenuItem(
                        value: lang['name'],
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(lang['flag'] ?? ''),
                            const SizedBox(width: 8),
                            Text(lang['name'] ?? ''), 
                            const Spacer(),
                            Text(lang['icon'] ?? ''), 
                          ],
                        ),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedLanguage = value!;
                      });
                    },
                  ),
                ),
              ),
        
              const SizedBox(height: 20),
        
              // Welcome Image
              Image.asset(
                "assets/images/login.png", 
                height: h * 0.35,
                fit: BoxFit.contain,
              ),
        
              const SizedBox(height: 20),
        
              Text(
                "Welcome to SwahiliPay",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppConstants.primaryColor,
                ),
                textAlign: TextAlign.center,
              ),
        
              const SizedBox(height: 20),
        
              // Enter Phone Text
              const Text(
                "Enter your phone number",
                style: TextStyle(fontSize: 16),
              ),
        
              const SizedBox(height: 10),
        
              // Phone Number Field
              Container(
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
                              Text(country['flag'] ?? ''), 
                              const SizedBox(width: 8),
                              Text(country['code'] ?? ''),
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
              ),
        
              SizedBox(height: h * 0.2),
        
              //  Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // if (phoneController.text.isNotEmpty) {
                      navigateToOtpScreen();
                    // } else {
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   const SnackBar(
                      //       content: Text("Please enter your phone number")
                      //       ),
                      // );
                   // }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppConstants.primaryColor,
                  ),
                  child: const Text(
                    "NEXT",
                    style: TextStyle(color: Colors.white),
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
