import 'package:flutter/material.dart';

void main() {
  runApp(const TaskifyApp());
}

class TaskifyApp extends StatelessWidget {
  const TaskifyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskifyScreen(),
    );
  }
}

class TaskifyScreen extends StatelessWidget {
  const TaskifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F3FA),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 60),

            const Text(
              'Taskify',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF6C63FF),
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Welcome back!',
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF25233A),
              ),
            ),

            const Text(
              'Organize your day and get things done.',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),

            const SizedBox(height: 25),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: const Color(0xFF6C63FF),
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Today\'s Progress',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      Text(
                        '5',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Total Tasks',
                        style: TextStyle(color: Colors.white70, fontSize: 14),
                      ),
                      Spacer(),
                      Text(
                        '2 Completed',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),

            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'My Tasks',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    color: Color(0xFF6C63FF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 15),

            taskCard('Complete Flutter Activity', 'Today • 10:00 AM'),
            const SizedBox(height: 12),
            taskCard('Review School Lessons', 'Today • 2:00 PM'),
            const SizedBox(height: 12),
            taskCard('Finish Project Documentation', 'Tomorrow • 9:00 AM'),
          ],
        ),
      ),
    );
  }

  static Widget taskCard(String title, String date) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          const Text(
            '○',
            style: TextStyle(fontSize: 23, color: Color(0xFF6C63FF)),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 5),
              Text(
                date,
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
