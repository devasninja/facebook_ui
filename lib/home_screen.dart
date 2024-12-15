import 'package:facebook_ui/story_item.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffFFFFFF),
        title: Row(
          children: [
            Image.asset(
              'assets/images/facebook_logo.png',
              width: 156,
              height: 36,
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/Plus.png",
              width: 22,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              "assets/images/Search.png",
              width: 22,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/Messenger.png',
              width: 22,
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xffFFFFFF),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 39,
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/home.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/watch.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/Store.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/Profile.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/Notification.png')),
                  IconButton(
                      onPressed: () {},
                      icon: Image.asset('assets/images/picture.png')),
                ],
              ),
            ),
          ),
          const Divider(color: Color(0xff898F9C)),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Colors.white,
            child: Row(
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/messi.jpg'),
                  radius: 25,
                ),
                const SizedBox(width: 10),
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "What's on your mind?",
                      hintStyle:
                          TextStyle(fontSize: 16, color: Color(0xff898F9C)),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 50,
                ),
                IconButton(
                    onPressed: () {},
                    icon: Image.asset('assets/images/photos.png')),
              ],
            ),
          ),
          const Divider(color: Color(0xff898F9C)),
          // const SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => const StoryItem(),
              separatorBuilder: (context, index) => const SizedBox(
                width: 10,
              ),
              itemCount: 10,
            ),
          ),

          const Divider(color: Color(0xff898F9C)),
        ],
      ),
    );
  }
}
