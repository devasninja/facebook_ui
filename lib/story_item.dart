import 'package:flutter/material.dart';

class StoryItem extends StatelessWidget {
  const StoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(5, (index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  Container(
                    width: 100,
                    height: 200,
                    decoration: const BoxDecoration(
                      shape: BoxShape.rectangle,
                      image: DecorationImage(
                        image: AssetImage('assets/images/messi.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // const SizedBox(height: 5),
                  // Text("Story ${index + 1}"),
                ],
              ),
            );
          }),
        ),
      ),
    );
  }
}
