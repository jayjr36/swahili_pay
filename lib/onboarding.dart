import 'package:flutter/material.dart';
import 'package:gpay/constants.dart';
import 'package:gpay/home_screen.dart';
import 'package:gpay/login.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  void _skip() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          PageView(
            controller: _pageController,
            children: [
              _buildPage(
                "Welcome to SwahiliPay",
                "assets/images/splash1.png",
                "Simple and secure way to send, spend and manage your money.",
              ),
              _buildPage(
                "Real-time Payments",
                "assets/images/splash2.png",
                "Experience instant, secure, and hassle-free transactions anytime.",
              ),
              _buildPage(
                "24/7 Support",
                "assets/images/splash3.png",
                "Get assistance whenever you need it with our dedicated support team.",
              ),
            ],
          ),
          Positioned(
            top: 40,
            right: 20,
            child: TextButton(
              onPressed: _skip,
              child: const Row(
                children: [
                  Text(
                    "Skip",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(String title, String imagePath, String description) {
    double h = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: AppConstants.primaryColor,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: h * 0.05),
          Image.asset(
            imagePath,
            height: h * 0.3,
            fit: BoxFit.contain,
          ),
          SizedBox(height: h * 0.05),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              description,
              style: const TextStyle(fontSize: 18, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
