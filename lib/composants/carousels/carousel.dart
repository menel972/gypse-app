import 'package:bible_quiz/composants/cards/livre_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';

class Carousel extends StatelessWidget {
  final List<String> items;
  const Carousel({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlutterCarousel.builder(
      itemCount: items.length,
      options: CarouselOptions(
        // aspectRatio: 0.709,
        height: MediaQuery.of(context).size.height * 0.275,
        enableInfiniteScroll: true,
        showIndicator: false,
        viewportFraction: 0.55,
        enlargeCenterPage: true,
        autoPlay: true,
      ),
      itemBuilder: (context, i, n) => LivreCard(livre: items[i]),
    );
  }
}

//2.30
