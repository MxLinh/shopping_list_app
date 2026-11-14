enum Categories {
  gemuese(0, 'Gemüse', 'assets/images/gemuese.png'),
  obst(1, 'Obst', 'assets/images/obst.png'),
  backwaren(2, 'Backwaren', 'assets/images/backwaren.png'),
  konserven(3, 'Konserven', 'assets/images/konserven.png'),
  gewuerze(4, 'Gewürze', 'assets/images/gewuerze.png'),
  milchprodukte(5, 'Milchprodukte', 'assets/images/milchprodukte.png'),
  tiefkuehl(6, 'Tiefkühl', 'assets/images/tiefkuehl.png'),
  fleisch(7, 'Fleisch', 'assets/images/fleisch.png'),
  snacks(8, 'Snacks', 'assets/images/snacks.png'),
  drogerie(9, 'Drogerie', 'assets/images/drogerie.png'),
  haushalt(10, 'Haushalt', 'assets/images/haushalt.png'),
  tuerkisch(11, 'Türkisch', 'assets/images/tuerkisch.png');

  const Categories(this.id, this.label, this.imagePath);

  final int id;
  final String label;
  final String imagePath;
}