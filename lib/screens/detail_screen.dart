import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static String routeName = '/detail';
  final String message;
  const DetailScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(title: Text('Detail Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Item id: ${args['itemId']} '),
            Text('Item id: ${args['message']} '),

            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, '[Item detail returned!]');
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
