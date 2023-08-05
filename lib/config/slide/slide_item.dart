class SlideItem {
  final String title;
  final String caption;
  final String imageUrl;

  SlideItem(
      {required this.title, required this.caption, required this.imageUrl});
}

final slide = [
  SlideItem(
      title: 'Qui ex eiusmod irure non velit adipisicing sint.',
      caption:
          'Ad qui non occaecat culpa sunt Lorem non laboris cupidatat cillum. Aute aute deserunt eiusmod aliqua dolore. Minim consequat et eiusmod deserunt consequat adipisicing deserunt minim. Nostrud ipsum aute culpa magna nulla exercitation quis minim dolore amet. Lorem veniam labore magna officia mollit sunt nostrud sint in voluptate.',
      imageUrl: 'assets/images/1.png'),
  SlideItem(
      title: 'Sint occaecat dolor aliquip culpa ad anim.',
      caption:
          'Aliqua eiusmod nisi aute nostrud occaecat non. Consectetur fugiat nulla minim fugiat qui labore reprehenderit ea officia et quis. Do nostrud veniam velit sunt ullamco reprehenderit excepteur irure in aute. Qui adipisicing id sint in exercitation.',
      imageUrl: 'assets/images/2.png'),
  SlideItem(
      title: 'Eiusmod tempor mollit exercitation ullamco in ad cillum.',
      caption:
          'Voluptate sunt ullamco aliqua exercitation sunt. Officia nostrud non ipsum mollit mollit pariatur excepteur proident esse proident id tempor sunt proident. Irure consequat sunt deserunt et occaecat dolor nisi et cillum fugiat.',
      imageUrl: 'assets/images/3.png'),
];
