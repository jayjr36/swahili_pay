import 'package:flutter/material.dart';

class SelfTransfer extends StatelessWidget {
  const SelfTransfer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Self Transfer'),
      ),
      body: Column(
        children: [
          const Text(
            'Manage your money better by adding another account to make self transfers.',
            style: TextStyle(color: Colors.grey),
          ),
          ListTile(
              leading: Image.asset(
                'assets/crdb.png',
                height: 30,
                width: 30,
              ),
              title: const Text(
                'CRDB BANK *****93479',
                style: TextStyle(color: Colors.blue, fontSize: 14),
              ),
              subtitle: const Text(
                'Saving Account',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              trailing: const Icon(
                Icons.verified_rounded,
                color: Colors.greenAccent,
              )),
          const SizedBox(
            height: 10,
          ),
          ListTile(
              leading: Icon(
                Icons.home_filled,
                color: Colors.green[500],
              ),
              title: Text(
                'Add new bank',
                style: TextStyle(color: Colors.blue[900]),
              ),
              trailing: const Icon(
                Icons.arrow_forward_ios,
                color: Colors.grey,
              ))
        ],
      ),
    );
  }
}
