import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Rodrigo_Activity 3',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.light,
        ),
        scaffoldBackgroundColor: const Color(0xFFFBF8FD),
      ),
      home: const EdgeInsetsDemo(),
    );
  }
}

class EdgeInsetsDemo extends StatelessWidget {
  const EdgeInsetsDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Rodrigo_Activity 3',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          Icon(Icons.more_vert),
          SizedBox(width: 8),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),

            // 1. EdgeInsets.all: applies equal padding on all four sides (30)
            Center(
              child: Container(
                padding: const EdgeInsets.all(30),
                color: const Color(0xFFE53935), // Red box
                child: const Text(
                  'EdgeInsets.all(30)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // 2. EdgeInsets.symmetric: applies symmetrical padding (horizontal: 40, vertical: 10)
            Container(
              width: double.infinity,
              color: const Color(0xFFFFD600), // Yellow box
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              alignment: Alignment.center,
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'EdgeInsets.symmetric(horizontal: 40, vertical: 10)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    shadows: [
                      Shadow(
                        offset: Offset(0, 0.5),
                        blurRadius: 1.5,
                        color: Colors.black45,
                      ),
                    ],
                  ),
                ),
              ),
            ),

            // 3. EdgeInsets.only: applies individual margins (left: 30, top: 10, right: 5, bottom: 20)
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(
                left: 30,
                top: 10,
                right: 5,
                bottom: 20,
              ),
              padding: const EdgeInsets.symmetric(vertical: 12),
              alignment: Alignment.center,
              color: const Color(0xFF1E88E5), // Blue box
              child: const FittedBox(
                fit: BoxFit.scaleDown,
                child: Text(
                  'EdgeInsets.only(left: 30, top: 10, right: 5, bottom: 20)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            // 4. EdgeInsets.fromLTRB: applies distinct padding (left: 10, top: 20, right: 30, bottom: 40)
            Center(
              child: Container(
                padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
                color: const Color(0xFF43A047), // Green box
                child: const Text(
                  'EdgeInsets.fromLTRB(10, 20, 30, 40)',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
