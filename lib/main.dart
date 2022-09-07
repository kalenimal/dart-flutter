import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(32),
      child: Row(children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 8),
              child: const Text('Oeschinen Lake Campground',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(color: Colors.grey[500]),
            )
          ],
        )),
        const FavoriteWidget()
      ]),
    );

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'Share')
      ],
    );

    Widget textSection = Container(
      padding: EdgeInsets.all(32),
      child: Text( 'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
    )
      );

    return MaterialApp(
      title: 'Flutter Layout demo',
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Layout demo'),
          ),
          body: ListView(
            children: [
              Image.asset(
                'images/lake.jpg',
                width: 600,
                height: 240,
                fit: BoxFit.cover
              ),
              titleSection,
              buttonSection,
              textSection
              ],
          )),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String lable) {
    return Column(
      children: [
        Icon(icon, color: color),
        Container(
            padding: EdgeInsets.only(top: 8),
            child: Text(lable,
                style: TextStyle(
                    fontSize: 12, fontWeight: FontWeight.w400, color: color)))
      ],
    );
  }
}

class FavoriteWidget extends StatefulWidget {
  const FavoriteWidget({super.key});

  @override
  State<FavoriteWidget> createState() => _FavoriteWidgetState();
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite = true;
  int _favoriteCount = 40;

  void _toggleFavorite() {
    setState(() {
      if(_isFavorite) {
        _favoriteCount -=1;
        _isFavorite = false;
      } else {
       _favoriteCount +=1;
        _isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
       Container(
        padding: EdgeInsets.all(0),
        child: IconButton(
           padding: EdgeInsets.all(0),
           alignment: Alignment.centerRight,
          icon: _isFavorite ? const Icon(Icons.star) :
          const Icon(Icons.star_border),
          color: Colors.red[500],
          onPressed: _toggleFavorite,
          ),
          ),
          SizedBox(
            width: 18,
            child: SizedBox(
              child: Text('$_favoriteCount'),
            )
          )
    ],
    );
  }
}
