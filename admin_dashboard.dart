import 'package:flutter/material.dart';
import 'data_absen.dart';  
import 'data_profil.dart'; 
import 'login_screen.dart'; 

class AdminDashboard extends StatelessWidget {
  const AdminDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Deep dark cyber background
      backgroundColor: const Color(0xFF05050A), 
      body: SafeArea(
        child: Column(
          children: [
            // --- HEADER ---
            Padding(
              padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Map Pin Icon
                  const Icon(
                    Icons.location_on,
                    color: Color(0xFF00E5FF), // Neon Cyan
                    size: 36,
                  ),
                  const SizedBox(width: 8),
                  // HadirIn Text with glow
                  Text(
                    'HadirIn',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: const Color(0xFF00E5FF).withOpacity(0.8),
                          blurRadius: 15,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const Spacer(),

            // --- MAIN CARD ---
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFF121225), // Dark card background
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: const Color(0xFF00E5FF).withOpacity(0.5), // Glowing border
                  width: 1.5,
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0xFF00E5FF).withOpacity(0.15),
                    blurRadius: 25,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Selamat Datang',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white70,
                      letterSpacing: 1.1,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    '[Admin]',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: const Color(0xFF00E5FF),
                      shadows: [
                        Shadow(
                          color: const Color(0xFF00E5FF).withOpacity(0.6),
                          blurRadius: 10,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 45),

                  // --- BUTTON 1: Data Absen ---
                  _buildCyberButton(
                    icon: Icons.calendar_month_outlined,
                    label: 'Data Absen',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => const DataAbsenScreen()),
                      );
                    }
                  ),
                  const SizedBox(height: 25),

                  // --- BUTTON 2: Data Profil ---
                  _buildCyberButton(
                    icon: Icons.person_outline,
                    label: 'Data Profil',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder:(context) => const DataProfilScreen()),
                      );
                    }
                  ),
                ],
              ),
            ),
            
            const Spacer(flex: 2),

            // --- NEW LOGOUT BUTTON (Red Cyber Theme) ---
            Padding(
              padding: const EdgeInsets.only(bottom: 30.0),
              child: OutlinedButton.icon(
                onPressed: () {
                  // Clears navigation stack and goes back to login[cite: 3]
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => const LoginScreen()),
                    (route) => false,
                  );
                },
                icon: const Icon(Icons.logout, color: Colors.redAccent),
                label: const Text(
                  'LOGOUT',
                  style: TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.redAccent, width: 2),
                  padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 40),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- CUSTOM CYBER BUTTON WIDGET ---
  Widget _buildCyberButton({
    required IconData icon, 
    required String label, 
    required VoidCallback onTap, 
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          colors: [
            const Color(0xFF00E5FF).withOpacity(0.15),
            const Color(0xFF00E5FF).withOpacity(0.05),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        border: Border.all(
          color: const Color(0xFF00E5FF).withOpacity(0.8),
          width: 1.5,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(15),
          splashColor: const Color(0xFF00E5FF).withOpacity(0.3),
          onTap: onTap, 
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              children: [
                Icon(
                  icon,
                  color: const Color(0xFF00E5FF),
                  size: 40,
                ),
                const SizedBox(width: 20),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}