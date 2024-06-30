import 'package:flutter/material.dart';

class TempPage extends StatelessWidget {
  const TempPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildSectionTitle('Introduction'),
                buildCard(
                  child: const Text(
                    "Hi everyone! I'm a computing student, solutions developer, and community volunteer. Exploring the fascinating fields of Software Development, Artificial Intelligence, and Cloud Computing technologies, I have a keen interest in and excitement for discovering new things as a student. My passion aligns with enjoying solving problems with code and creating useful applications using computing skills as a solution developer. While I'm doing this, I believe in giving back to the community and sharing my knowledge with others. So, I volunteer for various communities and create content that can help people achieve their goals and improve their lives.",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(height: 16),
                buildSectionTitle('Background'),
                buildCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildInfoRow(
                          Icons.person, 'Name: Dileepa Lakmal Bandara'),
                      buildInfoRow(Icons.cake, 'Birthday: July 24th'),
                      buildInfoRow(Icons.male, 'Gender: Male (He/Him/His)'),
                      buildInfoRow(
                          Icons.location_on, 'Location: Sri Lanka (GMT+5:30)'),
                      buildInfoRow(
                          Icons.language, 'Communicate: English & Sinhala'),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                buildSectionTitle('Goals'),
                buildCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildInfoRow(Icons.engineering, 'Follow: AI Engineering'),
                      buildInfoRow(
                          Icons.code, 'Practice: Software Development'),
                      buildInfoRow(Icons.support, 'Support: Tech Communities'),
                      buildInfoRow(Icons.school, "Complete: Master's Degree"),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                buildSectionTitle('Interests'),
                buildCard(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildInfoRow(Icons.movie, 'Watch: Movies & TV Shows'),
                      buildInfoRow(Icons.music_note, 'Listen: Songs & Music'),
                      buildInfoRow(Icons.create, 'Create: Contents & Media'),
                      buildInfoRow(Icons.explore, 'Explore: New Things'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget buildCard({required Widget child}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(16),
      child: child,
    );
  }

  Widget buildInfoRow(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, color: Colors.white),
        const SizedBox(width: 8),
        Expanded(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
