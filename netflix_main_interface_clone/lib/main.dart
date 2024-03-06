import 'package:flutter/material.dart';

void main() {
  runApp(const NetflixInterface());
}

class NetflixInterface extends StatelessWidget {
  const NetflixInterface({super.key});

  final String _logoUrl =
      "https://i.pinimg.com/736x/e9/88/40/e9884007598e2e329d53bb448ede4084.jpg";
  final String _iconSearch =
      "https://i.pinimg.com/736x/e9/88/40/e9884007598e2e329d53bb448ede4084.jpg";

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              children: <Widget>[
                Image.network(
                  _logoUrl,
                  width: 40,
                  fit: BoxFit.contain,
                ),
                const Spacer(
                  flex: 1,
                ),
                Image.network(
                  _iconSearch,
                  width: 40,
                  fit: BoxFit.contain,
                )
              ],
            ),
          ),
          _section('Séries', width),
          _section('Séries', width),
          _section('Séries', width),
          _section('Séries', width),
          _section('Séries', width),
          _section('Séries', width),
          _section('Séries', width),
          _section('Séries', width),
          _section('Séries', width),
        ],
      ),
    );
  }

  Widget _section(String title, double width) {
    final cardWidth = width ~/ 3.5;

    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: Row(
              children: List.generate(
                20,
                (index) => Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: Image.network(
                    _logoUrl,
                    width: cardWidth.toDouble(),
                    fit: BoxFit.contain,
                  ),
                ),
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
