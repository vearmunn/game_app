class GameModel {
  final String title;
  final String imageUrl;
  final double rating;
  final String genre;
  final String download;
  final String publisher;
  final String logoUrl;
  final String size;
  final String about;
  // final int panjang;
  final List<String> screenshotsUrl;
  GameModel(
      {this.title,
      this.imageUrl,
      this.rating,
      this.genre,
      this.download,
      this.publisher,
      this.logoUrl,
      this.size,
      this.about,
      // this.panjang,
      this.screenshotsUrl});
}
class LogoOnly {
  final String title;
  final String logoUrl;

  LogoOnly({this.title, this.logoUrl});
}
List<LogoOnly> logoOnlyUrl = [
  LogoOnly(logoUrl: 'assets/images/yakuzalogo.jpg', title: 'Yakuza 7'),
  LogoOnly(logoUrl: 'assets/images/spidermanlogo.jpg', title: 'SpiderMan : Milers Morales'),
  LogoOnly(logoUrl: 'assets/images/rdrlogo.png', title: 'Red Dead Redemption 2'),
  LogoOnly(logoUrl: 'assets/images/persona.png', title: 'Persona 5 Royal'),
  LogoOnly(logoUrl: 'assets/images/witcher.png', title: 'The Witcher 3'),

  
  
];

List<GameModel> youMustTry = [
  GameModel(
    title: 'Yakuza 7',
    imageUrl: 'assets/images/yakuza7.jpg',
    download: '234k',
    genre: 'JRPG',
    publisher: 'Sega',
    rating: 4.8,
    logoUrl: 'assets/images/yakuzalogo.jpg',
    size: '36GB',
    about:
        'Yakuza 7 follows new protagonist Kasuga Ichiban, a member of the yakuza, who is released from prison after 18 years following the gang’s boss, whom he adores as a father figure, asking him to take the fall for another member of his gang. Despite him expecting to be welcomed back into the family, however, nobody comes to see him on the day of his release, and when he confronts his former boss to find out what is going on, he is given no answers and is shot in return.',
    screenshotsUrl: [
      'assets/images/yakuzascreenshot1.jpg',
      'assets/images/yakuzascreenshot2.jpg',
      'assets/images/yakuzascreenshot3.jpg',
    ],
  ),
  GameModel(
      title: 'SpiderMan : Miles Morales',
      size: '48GB',
      imageUrl: 'assets/images/spiderman.jpg',
      download: '400k',
      genre: 'Action',
      publisher: 'Insomniac',
      rating: 4.9,
      about:
          'The game is the second installment in the Marvel\'s Spider-Man series, following Marvel\'s Spider-Man (2018), and depicts Miles\' struggle to balance the duties of his civilian persona and Spider-Man when his new home, Harlem, is threatened by a war between the Roxxon Energy Corporation and the Tinkerer\'s high-tech criminal army, the Underground.',
      screenshotsUrl: [
        'assets/images/spidermancreenshot1.webp',
        'assets/images/spidermancreenshot2.webp',
        'assets/images/spidermanscreenshot3.jpg'
      ],
      logoUrl: 'assets/images/spidermanlogo.jpg'),
  GameModel(
      title: 'Red Dead Redemption 2',
      size: '65GB',
      imageUrl: 'assets/images/rdr.jpg',
      download: '672k',
      genre: 'Adventure',
      publisher: 'Rockstar',
      rating: 5.0,
      about:
          'After a botched ferry heist in 1899, the Van der Linde gang are forced to leave their substantial money stash and flee Blackwater. Realizing the progress of civilization is ending the time of outlaws, they decide to gain enough money to escape the law and retire.',
      screenshotsUrl: [
        'assets/images/rdrscreenshot1.jpg',
        'assets/images/rdrscreenshot2.jpg',
        'assets/images/rdrscreenshot3.jpg',
      ],
      logoUrl: 'assets/images/rdrlogo.png'),
];
