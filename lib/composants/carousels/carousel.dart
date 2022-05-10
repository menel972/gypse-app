import 'dart:async';

import 'package:bible_quiz/composants/cards/livre_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Carousel extends StatefulWidget {
  final List<String> items;
  const Carousel({Key? key, required this.items}) : super(key: key);

  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    Timer.periodic(const Duration(seconds: 10), (timer) {
      _controller.nextPage(duration: const Duration(milliseconds: 600));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel.builder(
      carouselController: _controller,
      itemCount: widget.items.length,
      options: CarouselOptions(
        // aspectRatio: 0.709,
        height: MediaQuery.of(context).size.height * 0.275,
        enableInfiniteScroll: true,
        showIndicator: false,
        viewportFraction: 0.55,
        enlargeCenterPage: true,
      ),
      itemBuilder: (context, i, n) => LivreCard(livre: widget.items[i]),
    );
  }
}

//2.30
