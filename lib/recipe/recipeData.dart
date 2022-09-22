class Recipe {
  final String? label;
  final String? imageUrl;

  Recipe({this.label, this.imageUrl});

  static List<Recipe> samples = [
    Recipe(label: 'Кузов синий', imageUrl: 'assets/00-00008233.jpg'),
    Recipe(label: 'Кузов серый', imageUrl: 'assets/00-00008237.jpg'),
    Recipe(label: null, imageUrl: null),
    Recipe(label: 'Крытый', imageUrl: 'assets/00-00009072.jpg'),
    Recipe(label: 'Мерседес', imageUrl: 'assets/00-00009310.jpg')
  ];
}
