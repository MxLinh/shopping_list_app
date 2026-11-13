enum Categories {
  gemuese('Gemüse', 'assets/images/gemuese.png'),
  obst('Obst', 'assets/images/obst.png'),
  backwaren('Backwaren', 'assets/images/backwaren.png'),
  konserven('Konserven', 'assets/images/konserven.png'),
  gewuerze('Gewürze', 'assets/images/gewuerze.png'),
  milchprodukte('Milchprodukte', 'assets/images/milchprodukte.png'),
  tiefkuehl('Tiefkühl', 'assets/images/tiefkuehl.png'),
  fleisch('Fleisch', 'assets/images/fleisch.png'),
  snacks('Snacks', 'assets/images/snacks.png'),
  drogerie('Drogerie', 'assets/images/drogerie.png'),
  haushalt('Haushalt', 'assets/images/haushalt.png'),
  tuerkisch('Türkisch', 'assets/images/tuerkisch.png');

  const Categories(this.label, this.imagePath);

  final String label;
  final String imagePath;
}