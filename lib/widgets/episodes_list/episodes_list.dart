import 'package:bitsoft_flutter/datamodels/episode_item_model.dart';
import 'package:flutter/material.dart';

import 'episode_item.dart';

class EpisodesList extends StatelessWidget {
  EpisodesList({Key? key}) : super(key: key);

  final episodes = [
    EpisodeItemModel(
      title: 'À Espera de um Milagre',
      duration: 14.07,
      imageUrl:
          'https://m.media-amazon.com/images/M/MV5BMDFkYTc0MGEtZmNhMC00ZDIzLWFmNTEtODM1ZmRlYWMwMWFmXkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_.jpg',
    ),
    EpisodeItemModel(
        title: 'Hannibal',
        duration: 18.54,
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BZDMxMjhiZmItNWMxMC00NzYyLWJiOTYtNGYwOTAyYjU5OWY4XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg'),
    EpisodeItemModel(
        title: 'Coração Valente',
        duration: 14.55,
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BMzkzMmU0YTYtOWM3My00YzBmLWI0YzctOGYyNTkwMWE5MTJkXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_.jpg'),
    EpisodeItemModel(
        title: 'Os Imperdoáveis',
        duration: 14.55,
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BODM3YWY4NmQtN2Y3Ni00OTg0LWFhZGQtZWE3ZWY4MTJlOWU4XkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: <Widget>[
        ...episodes.map(
          (episode) => EpisodeItem(model: episode),
        )
      ],
    );
  }
}
