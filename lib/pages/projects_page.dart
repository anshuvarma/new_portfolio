import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/widgets/appBar_widget.dart';
import 'package:web_app/widgets/divider_widget.dart';
import 'package:web_app/widgets/row_card_widget.dart';
import 'package:web_app/widgets/skills_card_column.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> cardTitles = [
      "Portfolio",
      "Finger Detection and Counter",
      "ID & QR Code Generator",
      "Bankers Algorithm"
    ];

    List<String> cardDescriptions = [
      "A Flutter portfolio website includes: Home (background and overview), Projects (showcased works), Skills (languages and tools), Education (qualifications), and Experience (work history)",
      "A Python program that detects and counts the number of fingers displayed to the Webcam and outputs the corresponding result using various libraries like opencv, Mediapipe etc.",
      "Python script creates customizable ID cards with college names, unique IDs, personal details, and QR codes for data retrieval. It combines image handling and user input for easy ID card creation and management.",
      "This C program implements the Banker's Algorithm to ensure safe resource allocation, preventing deadlock by verifying if requests can be met without surpassing available resources.",
    ];

    List<List<String>> tags = [
      ["Flutter", "Dart"],
      ["Python", "OpenCV", "Mediapipe"],
      ["Python", "QR Code"],
      ["C", "C++"]
    ];

    List<String> githubUrls = [
      "https://github.com/anshuvarma/new_portfolio",
      "https://github.com/anshuvarma/FInger-Counter",
      "https://github.com/anshuvarma/ID-QRCode-Generator",
      "https://github.com/anshuvarma/OS-mini-project"
    ];

    List<List<Widget>> cardDescWidgets =
        List.generate(cardTitles.length, (index) {
      return [
        SkillsCardColumn(
          label: cardTitles[index],
          description: cardDescriptions[index],
          tags: tags[index],
          githubUrl: githubUrls[index],
        )
      ];
    });

    return Scaffold(
      appBar: AppBarWidget(currentRoute: '/projects'),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: AppColors.pageBackgroundColor,
        // color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: ListView(
            children: [
              const Text(
                "Academic Projects",
                textAlign: TextAlign.center,
                style: AppColors.heading,
              ),
              const SizedBox(height: 30.0),
              const Text(
                "Dive into the details of my academic projects, demonstrating practical knowledge, hands-on experience and dedication to learning",
                textAlign: TextAlign.center,
                style: AppColors.subHeading,
              ),
              const SizedBox(height: 30.0),
              DividerWidget(),
              const SizedBox(height: 20.0),
              RowCardWidget(
                // cardTitles: cardTitles,
                cardDesc: cardDescWidgets,
                maxCrossAxisExtent: 400.0,
                mainAxisSpacing: 16.0,
                crossAxisSpacing: 16.0,
                childAspectRatio: 1.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
