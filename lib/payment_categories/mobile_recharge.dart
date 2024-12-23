import 'package:flutter/material.dart';
import 'package:gpay/models/phone_field.dart';

class MobileRecharge extends StatefulWidget {
  const MobileRecharge({Key? key}) : super(key: key);

  @override
  _MobileRechargeState createState() => _MobileRechargeState();
}

class _MobileRechargeState extends State<MobileRecharge> {
  String? _selectedOperator; // Default value for operator
  String? _selectedPlan; // Default value for plan

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mobile Recharge'),
        backgroundColor: Colors.orange, // Adjust color to suit your theme
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Phone Input Field
            const PhoneField(),
            const SizedBox(height: 20),

            // Operator Dropdown
            const Text(
              "Select Operator",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                hint: const Text("Choose an Operator"),
                value: _selectedOperator,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedOperator = newValue;
                  });
                },
                items: <String>[
                  'Tigo',
                  'Vodacom',
                  'Airtel',
                  'Halotel',
                  'Zantel'
                ].map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),

            // Plan Dropdown
            const Text(
              "Select Plan",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(8),
              ),
              child: DropdownButton<String>(
                isExpanded: true,
                hint: const Text("Choose a Plan"),
                value: _selectedPlan,
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedPlan = newValue;
                  });
                },
                items: <String>['1GB', '2GB', '5GB', '10GB', '20GB']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
            ),
            const SizedBox(height: 20),

            // Submit Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Perform recharge or validation logic here
                  if (_selectedOperator != null && _selectedPlan != null) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                            'Recharging $_selectedOperator with $_selectedPlan'),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Please select both operator and plan'),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  backgroundColor: Colors.blue, 
                ),
                child: const Text('Recharge Now'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
