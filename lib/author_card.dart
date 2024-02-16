import 'package:flutter/material.dart';
import 'package:fooderlich/circle_image.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class AuthorCard extends StatefulWidget {
  const AuthorCard(
      {super.key,
      required this.authorName,
      required this.title,
      required this.image});

  final String authorName;
  final String title;
  final ImageProvider image;

  @override
  State<AuthorCard> createState() => _AuthorCardState();
}

class _AuthorCardState extends State<AuthorCard> {
  bool _isFavourited = false;
  @override
  Widget build(BuildContext context) {
    const snackBar = SnackBar(content: Text("Favourite Pressed"));
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: [
          CircleImage(
            image: widget.image,
            imageRadius: 28,
          ),
          const SizedBox(width: 4,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.authorName,
                style: FooderlichTheme.lightTextTheme.displayMedium,
              ),
              Text(
                widget.title,
                style: FooderlichTheme.lightTextTheme.displaySmall,
              ),
            ],
          ),
          const SizedBox(width: 30,),
          IconButton(
              onPressed: () {setState(() {
                _isFavourited = !_isFavourited;
              });},
              icon: Icon(
                _isFavourited? Icons.favorite:Icons.favorite_border,
                color: Colors.red[400],
                size: 30,
              ))
        ],
      ),
    );
  }
}
