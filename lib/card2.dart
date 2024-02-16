import 'package:flutter/material.dart';
import 'package:fooderlich/author_card.dart';
import 'fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
          constraints: const BoxConstraints.expand(width: 350, height: 650),
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/mag5.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              const AuthorCard(
                  authorName: "Mike Katz",
                  title: 'Smoothie Connoisseur',
                  image: AssetImage("assets/author_katz.jpeg")),
              Expanded(
                  child: Stack(
                children: [
                  Positioned(
                    bottom: 16,
                    right: 16,
                    child: Text(
                      'Recipe',
                      style: FooderlichTheme.lightTextTheme.displayLarge,
                    ),
                  ),
                    Positioned(
                      bottom: 70,
                      left: 16,
                      child: RotatedBox(
                        quarterTurns: 3,
                        child: Text(
                          'Smoothies',
                          style: FooderlichTheme.lightTextTheme.displayLarge,
                        ),
                      ),
                  ),
                ],
              ))
            ],
          ),
    ));
  }
}
