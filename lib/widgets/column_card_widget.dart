import 'package:flutter/material.dart';

class ColumnCardWidget extends StatelessWidget {
  final List<String> cardTitles;
  final List<List<Widget>> cardDesc;
  final List<List<Widget>> cardTitle2;
  final double? mainAxisExtent;

  const ColumnCardWidget({
    this.cardTitles = const [],
    this.cardTitle2 = const [],
    this.mainAxisExtent,
    required this.cardDesc,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 100),
      child: SizedBox(
        height: 500.0,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(), // Prevents scrolling
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisExtent: mainAxisExtent ?? 300.0, // Adjusted height
            childAspectRatio: 1.0,
            crossAxisSpacing: 20.0, //width space between the cards
          ),
          itemCount: cardDesc.length,
          itemBuilder: (context, index) {
            return Card(
              shadowColor: Colors.cyan.shade50,
              elevation: 5.0,
              shape: const RoundedRectangleBorder(
                side: BorderSide(
                  color: Colors.white,
                  width: 0.5,
                ),
              ),
              child: Container(
                color: Colors.black87,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        cardTitles[index],
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ), // Bold title
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      if (cardTitle2.isNotEmpty && index < cardTitle2.length)
                        ...cardTitle2[index],
                      const SizedBox(
                        height: 10.0,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: cardDesc[index]
                            .map((desc) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 3.0), // Reduced padding
                                  child: desc,
                                ))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
