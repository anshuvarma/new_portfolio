import 'package:flutter/material.dart';
import 'package:web_app/constants.dart';
import 'package:web_app/pages/education_page.dart';
import 'package:web_app/pages/experience_page.dart';
import 'package:web_app/pages/projects_page.dart';
import 'package:web_app/pages/skills_page.dart';
import 'package:web_app/widgets/appBar_widget.dart';
import 'package:web_app/widgets/column_card_widget.dart';
import 'package:web_app/widgets/divider_widget.dart';
import 'package:web_app/widgets/row_card_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // List<List<Widget>> cardTitles = [
    //   [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Text(
    //           'Software Developer',
    //           style: TextStyle(color: AppColors.fontColor,),
    //         ),
    //         Text(
    //           'May 2024 - Present',
    //           style: TextStyle(color: AppColors.fontColor,),
    //         ),
    //       ],
    //     ),
    //   ],
    //   [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Text(
    //           'Software Developer',
    //           style: TextStyle(color: AppColors.fontColor,),
    //         ),
    //         Text(
    //           'May 2024 - Present',
    //           style: TextStyle(color: AppColors.fontColor,),
    //         ),
    //       ],
    //     ),
    //   ],
    //   [
    //     Row(
    //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //       children: [
    //         Text(
    //           'Software Developer',
    //           style: TextStyle(color: AppColors.fontColor,),
    //         ),
    //         Text(
    //           'May 2024 - Present',
    //           style: TextStyle(color: AppColors.fontColor,),
    //         ),
    //       ],
    //     ),
    //   ],
    // ];
    List<String> cardTitles = ["Introduction", "Background", "Interests"];
    List<List<Widget>> cardDesc = [
      [
        const Text(
          "Hello Everyone, I'm a Software Developer with a bachelor's in Computer Engineering. I specialize in Python, app development, and data analysis. My experience includes developing mobile apps with Flutter and data visualizations with Power BI. Currently, I'm at Jio Platforms Limited, driving innovative projects and enhancing user experiences. My technical skills and successful project history make me a valuable team asset. I'm keen on exploring cloud computing and DevOps to improve scalability, reliability, and efficiency in software development.",
          style: TextStyle(
            color: AppColors.fontColor,
          ),
        ),
      ],
      [
        const Text(
          'Name: Anshu Varma',
          style: TextStyle(
            color: AppColors.fontColor,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Birthday: 10 November 2000',
          style: TextStyle(
            color: AppColors.fontColor,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Location: Mumbai, Maharashtra',
          style: TextStyle(
            color: AppColors.fontColor,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Gender: Female',
          style: TextStyle(
            color: AppColors.fontColor,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Communicate: English, Hindi, Marathi',
          style: TextStyle(
            color: AppColors.fontColor,
          ),
        ),
      ],
      [
        const Text(
          'Watching: Movies, TV Shows',
          style: TextStyle(
            color: AppColors.fontColor,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Listen: Music & Songs',
          style: TextStyle(
            color: AppColors.fontColor,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Cook: Indian, Italian, Chinese',
          style: TextStyle(
            color: AppColors.fontColor,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Travel: As much as i can',
          style: TextStyle(
            color: AppColors.fontColor,
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        const Text(
          'Technology: Cloud Computing and DevOps Engineering',
          style: TextStyle(
            color: AppColors.fontColor,
          ),
        ),
      ],
    ];

    return Scaffold(
      appBar: AppBarWidget(currentRoute: '/'),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromARGB(221, 13, 12, 12),
        // color: Colors.black87,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50.0),
          child: Column(
            children: [
              const Text("Hi There, Discover the Person Behind the Page",
                  style: AppColors.heading),
              const SizedBox(
                height: 30.0,
              ),
              const Text("Read on to find out more about who I am",
                  style: AppColors.subHeading),
              const SizedBox(
                height: 30.0,
              ),
              DividerWidget(),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                child: ColumnCardWidget(
                  mainAxisExtent: 350,
                  cardTitles: cardTitles,
                  cardDesc: cardDesc,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
