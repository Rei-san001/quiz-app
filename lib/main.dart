import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color(0xFF283E51),
                    Color(0xFF4B79A1),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
            ),
            child: const StartScreen(),
          ),
      ),
    ),
  );
}