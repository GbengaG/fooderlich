import 'dart:math';

import 'package:flutter/material.dart';

import 'fooderlich_theme.dart';

class Card3 extends StatelessWidget {
  const Card3({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 650),
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('assets/mag2.png'), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10)),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.transparent.withOpacity(0.6)),
            ),
            // TODO 6: Add Container, Column, Icon and Text
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.book,
                    color: Colors.white,
                    size: 40,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.displayMedium,
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            Center(
              child: Wrap(
                alignment: WrapAlignment.start,
                spacing: 10,
                children: [
                  Chip(
                    label: Text('Healthy',
                        style: FooderlichTheme.darkTextTheme.bodyLarge),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                    label: Text('Vegan',
                        style: FooderlichTheme.darkTextTheme.bodyLarge),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                  Chip(
                      label: Text('Carrots',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        print('delete');
                      }),
                  Chip(
                      label: Text('Carrots',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        print('delete');
                      }),
                  Chip(
                      label: Text('Carrots',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        print('delete');
                      }),
                  Chip(
                      label: Text('Carrots',
                          style: FooderlichTheme.darkTextTheme.bodyLarge),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        print('delete');
                      }),
                  Chip(
                    label: Text('Toys',
                        style: FooderlichTheme.darkTextTheme.bodyLarge),
                    backgroundColor: Colors.black.withOpacity(0.7),
                    onDeleted: () {
                      print('delete');
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
