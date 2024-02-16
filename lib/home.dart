import 'package:flutter/material.dart';
import 'card3.dart';
import 'card2.dart';
import 'card1.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List pages = [
    const Card1(),
    const Card2(),
    const Card3(),
  ];
  void _onItemTapped(int index){
    setState((){
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      /// Theme.of(context) this returns the Theme in the widget tree...
      /// particularly because of the of(context)
      appBar: AppBar(
          title: Text(
        'Fooderlich',
        style: Theme.of(context).textTheme.titleLarge,
      )),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).textSelectionTheme.selectionColor,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card2"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Card3"),
        ],
      ),
    );
  }
}
