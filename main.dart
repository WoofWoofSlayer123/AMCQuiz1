import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp( // #1 Material App: The Material app sets the app theme and the first screen.
    title: 'Week 1 - All 8 Widgets',
    theme: ThemeData(primarySwatch: Colors.teal),
    home: const HomeScreen(),
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold( // #2 Scaffold: The Scaffold is the page layout structure of the screen.
    appBar: AppBar(title: const Text('All Widgets')), // #3 App Bar: The App Bar: The App Bar is the navigation bar at the top of the screen.
    body: Center( // #7 Center: Center is a widget that centers its child vertically and horizontally.
      child: Container( // #8 Container: Container is a widget used for layout and styling
        padding: const EdgeInsets.all(20),
        child: Column( // #6 Column: Column is a widget that arranges children Vertically
          children: [
            Row( // #5 Row: Row is a widget that arranges children horizontally
              children: [
                const Icon(Icons.star),
                const Text('Flutter'), // #4 Text('Flutter'): Text is used to display text on the screen.
              ],
            ),
          ],
        ),
      ),
    ),
  );
}