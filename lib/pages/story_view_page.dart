import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';

class StoryPageView extends StatelessWidget {
  final _storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    final controller = StoryController();
    final List<StoryItem> storyItems = [
      StoryItem.text(
        title: '''By Failing to Plan you are planning to fail''',
        backgroundColor: Colors.grey),
      StoryItem.pageImage(
          url:
          "Assets/img/DIMENSION 780x1280 Fix Reflection.png",
          controller: _storyController),
      // StoryItem.pageImage(
      //     url:
      //     "https://media.wired.com/photos/5e82883c6e4b250008c02ecc/1:1/w_572,h_572,c_limit/gear-emails-914669386.jpg",
      //     controller: _storyController,
      //     imageFit: BoxFit.contain),
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: controller,
        inline: false,
        repeat: true,
      ),
    );
  }
}