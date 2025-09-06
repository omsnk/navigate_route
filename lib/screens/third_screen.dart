import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static String routeName = '/third';
  final String message;
  const ThirdScreen({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(title: const Text('Third Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('title : ${args['title']}'),
            Text('Detail: ${args['detail']}'),

            SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, '[Third Screen returned !-!]');
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}
