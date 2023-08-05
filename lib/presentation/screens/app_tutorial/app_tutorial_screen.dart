import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/slide/slide_item.dart';

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomPageView(),
    );
  }
}

class CustomPageView extends StatelessWidget {
  const CustomPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
          physics: const BouncingScrollPhysics(),
            children: slide
                .map((e) => _ImageSlide(
                      title: e.title,
                      caption: e.caption,
                      imageUrl: e.imageUrl,
                    ))
                .toList()),
        Positioned(
            right: 20,
            top: 50,
            child: TextButton(
                onPressed: () {
                  context.pop();
                },
                child: const Text('Skip'))),
      ],
    );
  }
}

class _ImageSlide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _ImageSlide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final captionStyle = Theme.of(context).textTheme.titleLarge;
    final subCaptionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imageUrl),
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: captionStyle,
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            caption,
            style: subCaptionStyle,
          ),
        ],
      ),
    );
  }
}
