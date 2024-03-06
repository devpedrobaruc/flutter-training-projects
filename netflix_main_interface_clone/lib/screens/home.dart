import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final String _logoUrl =
      "https://i.pinimg.com/736x/e9/88/40/e9884007598e2e329d53bb448ede4084.jpg";
  final String _iconSearch =
      "https://i.pinimg.com/736x/e9/88/40/e9884007598e2e329d53bb448ede4084.jpg";

  @override
  Widget build(BuildContext context) {
    final media = MediaQuery.of(context);

    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            top: media.viewPadding.top, bottom: media.viewPadding.bottom),
        child: Stack(
          children: <Widget>[
            ListView(
              padding: const EdgeInsets.only(top: 60),
              children: <Widget>[
                Center(
                  child: Image.network(
                    _logoUrl,
                    fit: BoxFit.contain,
                    width: media.size.width / 1.2,
                  ),
                ),
                _section(
                  title: 'Séries',
                  width: media.size.width,
                ),
                _section(
                  title: 'Filmes',
                  width: media.size.width,
                ),
                _section(
                  title: 'Séries',
                  width: media.size.width,
                ),
                _section(
                  title: 'Ficção científica',
                  width: media.size.width,
                ),
                _section(
                  title: 'Ação',
                  width: media.size.width,
                ),
                _section(
                  title: 'Drama',
                  width: media.size.width,
                ),
              ],
            ),
            Positioned(
              child: Container(
                padding: const EdgeInsets.only(right: 20, left: 20),
                height: 50,
                color: Theme.of(context).primaryColor,
                child: Row(
                  children: <Widget>[
                    Center(
                      child: Image.network(
                        _logoUrl,
                        width: 40,
                        fit: BoxFit.contain,
                      ),
                    ),
                    const Spacer(
                      flex: 1,
                    ),
                    Center(
                      child: Image.network(
                        _iconSearch,
                        width: 40,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _section({String title = '', double width = 10}) {
    final cardWidth = width ~/ 3.5;

    return Container(
      padding: const EdgeInsets.only(top: 10),
      child: Column(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
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
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding:
                const EdgeInsets.only(top: 10, bottom: 10, left: 10, right: 10),
            child: Row(
              children: List.generate(
                20,
                (index) => Container(
                  margin: const EdgeInsets.only(right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(
                      _logoUrl,
                      width: cardWidth.toDouble(),
                      fit: BoxFit.contain,
                    ),
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
