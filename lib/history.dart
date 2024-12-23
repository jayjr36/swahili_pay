import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  final List<Map<String, dynamic>> _transactions = [
    {
      'profilePic':
          'https://plus.unsplash.com/premium_photo-1731499365752-cf90a04e0836?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8YXZhdGFyJTIwcHJvZmlsZSUyMHBpY3xlbnwwfHwwfHx8MA%3D%3D',
      'senderName': 'John Doe',
      'dateTime': DateTime.now(),
      'amount': '20000'
    },
    {
      'profilePic':
          'https://images.unsplash.com/photo-1438761681033-6461ffad8d80?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YXZhdGFyJTIwcHJvZmlsZSUyMHBpY3xlbnwwfHwwfHx8MA%3D%3D',
      'senderName': 'Jane Doe',
      'dateTime': DateTime.now().subtract(const Duration(days: 1)),
      'amount': '25000'
    },
    {
      'profilePic':
          'https://images.unsplash.com/photo-1494790108377-be9c29b29330?w=800&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8YXZhdGFyJTIwcHJvZmlsZSUyMHBpY3xlbnwwfHwwfHx8MA%3D%3D',
      'senderName': 'Lucia Doe',
      'dateTime': DateTime.now().subtract(const Duration(days: 1)),
      'amount': '5000'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Transaction History'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: _transactions.map((e) {
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(e['profilePic']),
              ),
              title: Text(
                '${e['senderName']} sent ${e['amount']}',
                style: const TextStyle(color: Colors.blue, fontSize: 14),
              ),
              subtitle: Text(
                '${DateFormat('dd MMM, yyyy').format(e['dateTime'])} at ${DateFormat('hh:mm a').format(e['dateTime'])}',
                style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
              ),
              trailing: Text(
                '${e['amount']}',
                style: TextStyle(color: Colors.green.shade600, fontSize: 14),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Transaction Details'),
                        content: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Sender Name: ${e['senderName']}'),
                            const Divider(),
                            Text(
                                'Date: ${DateFormat('dd MMM, yyyy').format(e['dateTime'])}'),
                            const Divider(),
                            Text(
                                'Time: ${DateFormat('hh:mm a').format(e['dateTime'])}'),
                            const Divider(),
                            Text('Amount: ${e['amount']}'),
                            const Divider(),
                          ],
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: const Text('OK'),
                          ),
                        ],
                      );
                    });
              },
            );
          }).toList(),
        ),
      ),
    );
  }
}
