import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  AppBarWidget({super.key});

  // Define URLs
  final List<String> urls = [
    "https://www.linkedin.com/in/anshu-varma-32b99b1ba/",
    "https://github.com/anshuvarma",
    "https://www.instagram.com/anshu.n.varma?r=nametag",
    "https://docs.google.com/document/d/1VHvTTR3EP-Pry0UCPH3D4wypgyavK1gk/edit?usp=sharing&ouid=106733988499391269666&rtpof=true&sd=true"
  ];

  Future<void> _launchURL(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    // Define the routes
    final List<String> appBarText = [
      "Home",
      "Skills",
      "Experience",
      "Projects",
      "Education",
    ];

    final List<String> routes = [
      '/',
      '/skills',
      '/experience',
      '/projects',
      '/education',
    ];

    return AppBar(
      shadowColor: Colors.cyan.shade100,
      backgroundColor: const Color.fromARGB(221, 0, 0, 0),
      title: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Anshu Varma",
              style: TextStyle(color: Colors.white),
            ),
            Row(
              children: [
                for (int i = 0; i < appBarText.length; i++)
                  TextButton(
                    onPressed: () {
                      // Navigate to the respective route
                      Navigator.pushNamed(context, routes[i]);
                    },
                    child: Text(
                      appBarText[i],
                      style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
            Row(
              children: [
                IconButton(
                  icon: Image.asset(
                    'assets/images/linkedin.png',
                    height: 24.0, // Adjust icon size
                    width: 24.0,
                  ),
                  onPressed: () {
                    _launchURL(urls[0]);
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/github.png',
                    height: 24.0,
                    width: 24.0,
                  ),
                  onPressed: () {
                    _launchURL(urls[1]);
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/instagram.png',
                    height: 24.0,
                    width: 24.0,
                  ),
                  onPressed: () {
                    _launchURL(urls[2]);
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'assets/images/resume.png',
                    height: 24.0,
                    width: 24.0,
                  ),
                  onPressed: () {
                    _launchURL(urls[3]);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
