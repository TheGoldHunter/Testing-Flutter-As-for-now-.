import 'package:flutter/material.dart';

class DataProfilScreen extends StatelessWidget {
  const DataProfilScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF05050A), 
      body: SafeArea(
        child: Column(
          children: [
            // --- HEADER WITH BACK BUTTON ---
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0, bottom: 20.0),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back_ios_new, color: Color(0xFF00E5FF)),
                      onPressed: () => Navigator.pop(context), 
                      splashRadius: 24,
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.location_on, color: Color(0xFF00E5FF), size: 30),
                      const SizedBox(width: 8),
                      Text(
                        'HadirIn',
                        style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          shadows: [
                            Shadow(color: const Color(0xFF00E5FF).withOpacity(0.8), blurRadius: 15),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            
            // --- PAGE TITLE ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Data Profil',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    shadows: [
                      Shadow(color: const Color(0xFF00E5FF).withOpacity(0.5), blurRadius: 10),
                    ],
                  ),
                ),
              ),
            ),

            // --- EMPTY DATA CONTAINER ---
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 24, right: 24, bottom: 40, top: 10),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF121225),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: const Color(0xFF00E5FF).withOpacity(0.5), 
                    width: 1.5,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0xFF00E5FF).withOpacity(0.1),
                      blurRadius: 20,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: const Center(
                  child: Text(
                    '// Insert Profile Form Here',
                    style: TextStyle(
                      color: Colors.white54, 
                      fontFamily: 'monospace',
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}