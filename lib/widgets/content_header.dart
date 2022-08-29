import 'package:flutter/material.dart';
import 'package:flutter_netflix_responsive_ui/models/models.dart';
import 'widgets.dart';

class ContentHeader extends StatelessWidget {
  final Content featuredContent;

  const ContentHeader({
    Key key,
    @required this.featuredContent,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 500.0,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(featuredContent.imageUrl),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 500.0,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.black, Colors.transparent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
        Positioned(
          bottom: 110.0,
          child: SizedBox(
            width: 250.0,
            child: Image.asset(featuredContent.titleImageUrl),
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 40.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              VerticalIconButton(
                  icon: Icons.add,
                  title: 'List',
                  onTap: () => print('My List')),
              _PlayButton(),
              VerticalIconButton(
                  icon: Icons.info_outline,
                  title: 'Info',
                  onTap: () => print('Info')),
            ],
          ),
        ),
      ],
    );
  }
}

class _PlayButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => print('Play'),
      style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.fromLTRB(15.0, 5.0, 20.0, 5.0),
          backgroundColor: Colors.white,
          fixedSize: Size(105, 30)
      ),
      icon: Icon(
        Icons.play_arrow,
        size: 30.0,
        color: Colors.black,
      ),
      label: Text(
        'Play',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
        ),
      ),
    );
  }
}
