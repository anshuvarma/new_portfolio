// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:web_app/widgets/appBar_widget.dart';
import 'package:web_app/widgets/column_card_widget.dart';
import 'package:web_app/widgets/row_card_widget.dart';

class ExperiencePage extends StatelessWidget {
  const ExperiencePage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> experienceCardTitles = [
      "Software Developer",
      "Graduate Engineer Trainee",
      "Internship",
    ];
    List<List<Widget>> experienceCardDesc = [
      // FLUTTER
      [
        const Text(
          "PEOPLE FIRST",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 5.0,
        ),

        const Text(
          "Driving the creation of People First, a cutting-edge mobile application developed with Flutter, has significantly enhanced interactions for over 550,000 users in real time. By integrating 22 essential HR processes—including hiring, onboarding, engagement, and offboarding—the application streamlines workflows and boosts productivity. Its user-centric design not only improves overall efficiency but also ensures a seamless and engaging experience, fostering a more connected and productive workforce",
          style: TextStyle(color: Colors.white),
        ),
        // Add more skillscard as needed
      ],

      // POWER BI
      [
        const Text(
          "JIO FACE DASHBOARD",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          "Developed MongoDB views with sophisticated lookups, grouping, projection, and matching that resulted in a 35% increase in data filtering efficiency. 50% less manual ETL work was required when using Airbyte to integrate MongoDB as a source and PostgreSQL as a destination. created an interactive, dynamic Power BI dashboard that improved data presentation by 40% and used DAX queries to get accurate attendance data. Oversaw gradual data refreshes for in-the-moment database changes.",
          style: TextStyle(color: Colors.white),
        ),
        // Add more skillscard as needed
      ],

      // INTERNSHIP
      [
        const Text(
          "THE SPARKS FOUNDATION",
          style: TextStyle(color: Colors.white),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          "During my internship, I utilized Python to implement unsupervised machine learning techniques on the 'Iris' dataset. By applying KMeans clustering and employing the elbow method, I identified the optimal number of clusters. Visualizing these clusters not only facilitated the segmentation of Iris-setosa, Iris-versicolour, and Iris-virginica species based on their characteristics but also demonstrated my proficiency in data analysis and interpretation using machine learning algorithms.",
          style: TextStyle(color: Colors.white),
        ),
        // Add more skillscard as needed
      ],
    ];

    return Scaffold(
      appBar: AppBarWidget(currentRoute: '/experience'),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: ListView(
            children: [
              const Text(
                "Professional Journey",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20.0),
              const Text(
                "From past internship to present employement—explore my professional evolution.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w200,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20.0),
              ColumnCardWidget(
                cardTitles: experienceCardTitles,
                cardDesc: experienceCardDesc,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
