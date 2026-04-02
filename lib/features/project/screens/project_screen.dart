import 'package:devtodo/features/project/widgets/project_card.dart';
import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3E3838), // dark bottom bg
      body: Column(
        children: [
          // Top Section
          Expanded(
            flex: 7,
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
              decoration: const BoxDecoration(
                color: Color(0xFFE5EAE4),
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Projects",
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),

                  // List of Projects
                  Expanded(
                    child: ListView.builder(
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return const ProjectCard();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          // Bottom Section
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Today",
                            style: TextStyle(color: Colors.white, fontSize: 22),
                          ),
                          Text(
                            "6 Tasks",
                            style: TextStyle(color: Colors.white70),
                          ),
                        ],
                      ),

                      // Add More Button
                      TextButton(
                        style: ButtonStyle(
                          foregroundColor: WidgetStateProperty.all(
                            Colors.transparent,
                          ),
                          side: WidgetStateProperty.all(
                            const BorderSide(color: Colors.white54),
                          ),
                          shape: WidgetStateProperty.all(
                            RoundedRectangleBorder(
                              side: const BorderSide(style: BorderStyle.solid),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          padding: WidgetStateProperty.all(
                            const EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 10,
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/ai');
                        },
                        child: const Text(
                          'Add more',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),

                  const Spacer(),

                  // Bottom Navigation Row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Icon(Icons.grid_view, color: Colors.white),
                      Text(
                        "April 1 2025",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Icon(Icons.access_time, color: Colors.white),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
