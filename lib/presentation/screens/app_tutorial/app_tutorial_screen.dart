import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:animate_do/animate_do.dart';

import 'package:widgets_app/config/slide/slide_item.dart';

class AppTutorialScreen extends StatelessWidget {
  static const name = 'tutorial_screen';

  const AppTutorialScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: CustomPageView(),
    );
  }
}

class CustomPageView extends StatefulWidget {
  const CustomPageView({
    super.key,
  });

  @override
  State<CustomPageView> createState() => _CustomPageViewState();
}

class _CustomPageViewState extends State<CustomPageView> {
  bool endReached = false;
  final PageController _controller = PageController();

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      final page = _controller.page ?? 0;
      if (!endReached && page >= (slides.length - 1.5)) {
        setState(() {
          endReached = true;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageView(
            controller: _controller,
            physics: const BouncingScrollPhysics(),
            children: slides
                .map((slide) => _Slide(
                      title: slide.title,
                      caption: slide.caption,
                      imageUrl: slide.imageUrl,
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
        endReached
            ? Positioned(
                bottom: 30,
                right: 30,
                child: FadeIn(
                  animate: true,
                  duration: const Duration(seconds: 2),
                  child: FilledButton(
                      onPressed: () => context.pop(),
                      child: const Text('Start')),
                ))
            : const SizedBox(
                height: 20,
              )
      ],
    );
  }
}

class _Slide extends StatelessWidget {
  final String title;
  final String caption;
  final String imageUrl;
  const _Slide(
      {required this.title, required this.caption, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final captionStyle = Theme.of(context).textTheme.titleLarge;
    final subCaptionStyle = Theme.of(context).textTheme.bodySmall;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Center(
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
              height: 10,
            ),
            Text(
              caption,
              style: subCaptionStyle,
            ),
          ],
        ),
      ),
    );
  }
}
