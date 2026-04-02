import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  const Todo({super.key});

  @override
  Widget build(BuildContext context) {
    // Custom Colors based on the image
    const Color bgColor = Color(0xFFEFFFF2); // Top light background
    const Color cardBgColor = Color(0xFF3D3635); // Dark main area
    const Color accentGreen = Color(0xFFE3FCE9); // Task card / Today color
    const Color darkText = Color(0xFF1A1A1A);

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // --- Top Header ---
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios_new, color: darkText),
                  const Text(
                    'Untitled Project',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: darkText,
                    ),
                  ),
                  const SizedBox(width: 24), // Spacer for centering
                ],
              ),
            ),

            // --- Progress Indicator ---
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    '44%',
                    style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
                  ),
                  SizedBox(width: 10),
                  Text(
                    'Task Complete',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),

            // --- Dark Container for Calendar & Tasks ---
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: cardBgColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    // --- Horizontal Date Picker ---
                    const SizedBox(height: 20),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Row(
                        children: [
                          _buildDateCard(
                            "Wed 01.04.26",
                            "Today",
                            accentGreen,
                            darkText,
                            true,
                          ),
                          _buildDateCard(
                            "Thu 02.04.26",
                            "Tomorrow",
                            Colors.white,
                            darkText,
                            false,
                          ),
                          _buildDateCard(
                            "03.04.26",
                            "Friday",
                            Colors.white,
                            darkText,
                            false,
                          ),
                          _buildDateCard(
                            "04.04.26",
                            "Saturday",
                            Colors.white,
                            darkText,
                            false,
                          ),
                        ],
                      ),
                    ),

                    // --- Task List ---
                    Expanded(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 20,
                        ),
                        children: [
                          _buildGhostTask("Setting up documentaion."),
                          _buildGhostTask("Lorem"),
                          _buildActiveTask(
                            "Setting up documentaion.",
                            accentGreen,
                          ),
                          _buildGhostTask(
                            "Setting up documentaion.Setting up documentaion.Setting up documentaion.",
                          ),
                          _buildGhostTask("Setting up documentaion."),
                          _buildActiveTask(
                            "Setting up documentaion.",
                            accentGreen,
                          ),
                          _buildActiveTask(
                            "Setting up documentaion.",
                            accentGreen,
                          ),
                          _buildActiveTask(
                            "Setting up documentaion.",
                            accentGreen,
                          ),
                          _buildActiveTask(
                            "Setting up documentaion.Setting up documentaion.Setting up documentaion.Setting up documentaion.Setting up documentaion.Setting up documentaion.",
                            accentGreen,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      // --- Floating Action Button ---
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFF4A6346),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: const Icon(Icons.add, color: accentGreen, size: 30),
      ),
    );
  }

  // Widget for the Calendar Top items
  Widget _buildDateCard(
    String date,
    String label,
    Color bg,
    Color textColor,
    bool isSelected,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      width: 110,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: bg,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            date,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
          Text(
            label,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  // Widget for the "Inactive/Dark" tasks
  Widget _buildGhostTask(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(
        title,
        style: const TextStyle(
          color: Colors.black54,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // Widget for the "Active/Light" tasks with Checkbox
  Widget _buildActiveTask(String title, Color bg) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 24,
            width: 24,
            margin: const EdgeInsets.only(top: 10, right: 12),
            decoration: BoxDecoration(
              border: Border.all(color: const Color(0xFFD9B18E), width: 2),
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              decoration: BoxDecoration(
                color: bg,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
