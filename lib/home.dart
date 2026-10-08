import 'package:flutter/material.dart';

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    backgroundColor: Colors.white,
    body: SafeArea(
      child: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 460),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'POINKU',
                  textAlign: TextAlign.center,
                  style: TextStyle( fontSize: 12),
                ),
                const SizedBox(height: 12),
                const Text(
                  'Pembelian: Laptop Gaming',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(0, 8, 7, 10),
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  'Rekomendasi Teman',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(0, 8, 7, 10),
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const Text(
                  'Booking Hotel',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color.fromARGB(0, 8, 7, 10),
                    fontSize: 27,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  '',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Color(0xFF555555), height: 1.2),
                ),
                const SizedBox(height: 60),
                SizedBox(
                  width: 262,
                  height: 66,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/login');
                    },
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      elevation: 0,
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Get Started',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Icon(Icons.arrow_forward, size: 28),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
