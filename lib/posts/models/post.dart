class Post {
  int _id;
  String _title;
  String _author;
  String _authorImage;
  String _shortDescription;
  String _description;
  String _imagePath;
  String _date;
  double _rating;

  Post({
    id,
    author,
    authorImage,
    title,
    shortDescription,
    description,
    imagePath,
    date,
    rating,
  }) {
    this._id = id;
    this._title = title;
    this._author = author;
    this._authorImage = authorImage;
    this._shortDescription = shortDescription;
    this._description = description;
    this._imagePath = imagePath;
    this._date = date;
    this._rating = rating;
  }

  // getters
  int get id => _id;
  String get title => _title;
  String get author => _author;
  String get authorImage => _authorImage;
  String get description => _description;
  String get imagePath => _imagePath;
  String get shortDescription => _shortDescription;
  String get date => _date;
  double get rating => _rating;

  // setters
}

List<Post> demo_posts = [
  Post(
    id: 0,
    title: 'Demo Post',
    author: 'Ubaydullah',
    authorImage: 'avatar.png',
    shortDescription:
        'Contrary to popular belief, Lorem Ipsum is simply random text. Contrary to popular belief, Lorem Ipsum is simply random? Contrary to popular belief, ...',
    description:
        'Contrary to popular belief, Lorem Ipsum is simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.3 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,',
    imagePath: 'iphone.jpg',
    date: '12th August, 2020',
    rating: 4.0,
  ),
  Post(
    id: 1,
    title: 'Demo Title 1',
    author: 'Abdur Rahim',
    authorImage: 'avatar.png',
    shortDescription:
        'Contrary to popular belief, Lorem Ipsum is simply random text. Contrary to popular belief, Lorem Ipsum is simply random? Contrary to popular belief, ...',
    description:
        'Contrary to popular belief, Lorem Ipsum is simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.3 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,',
    imagePath: 'iphone.jpg',
    date: '12th August, 2020',
    rating: 4.5,
  ),
  Post(
    id: 2,
    title: 'Demo Title 2',
    author: 'Rohmotullah',
    authorImage: 'avatar.png',
    shortDescription:
        'Contrary to popular belief, Lorem Ipsum is simply random text. Contrary to popular belief, Lorem Ipsum is simply random? Contrary to popular belief, ...',
    description:
        'Contrary to popular belief, Lorem Ipsum is simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.3 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,',
    imagePath: 'iphone.jpg',
    date: '12th August, 2020',
    rating: 5.0,
  ),
  Post(
    id: 3,
    title: 'Demo Title 3',
    author: 'Sher e Azam',
    authorImage: 'avatar.png',
    shortDescription:
        'Contrary to popular belief, Lorem Ipsum is simply random text. Contrary to popular belief, Lorem Ipsum is simply random? Contrary to popular belief, ...',
    description:
        'Contrary to popular belief, Lorem Ipsum is simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.3 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,',
    imagePath: 'iphone.jpg',
    date: '12th August, 2020',
    rating: 4.5,
  ),
  Post(
    id: 4,
    title: 'Demo Title 4',
    author: 'Sirazuddaula',
    authorImage: 'avatar.png',
    shortDescription:
        'Contrary to popular belief, Lorem Ipsum is simply random text. Contrary to popular belief, Lorem Ipsum is simply random? Contrary to popular belief, ...',
    description:
        'Contrary to popular belief, Lorem Ipsum is simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.3 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,',
    imagePath: 'iphone.jpg',
    date: '12th August, 2020',
    rating: 4.5,
  ),
  Post(
    id: 5,
    title: 'Demo Title 5',
    author: 'Ubaydullah',
    authorImage: 'avatar.png',
    shortDescription:
        'Contrary to popular belief, Lorem Ipsum is simply random text. Contrary to popular belief, Lorem Ipsum is simply random? Contrary to popular belief, ...',
    description:
        'Contrary to popular belief, Lorem Ipsum is simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.3 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,',
    imagePath: 'iphone.jpg',
    date: '12th August, 2020',
    rating: 4.5,
  ),
  Post(
    id: 6,
    title: 'Demo Title 6',
    author: 'Ubaydullah',
    authorImage: 'avatar.png',
    shortDescription:
        'Contrary to popular belief, Lorem Ipsum is simply random text. Contrary to popular belief, Lorem Ipsum is simply random? Contrary to popular belief, ...',
    description:
        'Contrary to popular belief, Lorem Ipsum is simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.3 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,',
    imagePath: 'iphone.jpg',
    date: '12th August, 2020',
    rating: 4.5,
  ),
  Post(
    id: 7,
    title: 'Demo Title 7',
    author: 'Ubaydullah',
    authorImage: 'avatar.png',
    shortDescription:
        'Contrary to popular belief, Lorem Ipsum is simply random text. Contrary to popular belief, Lorem Ipsum is simply random? Contrary to popular belief, ...',
    description:
        'Contrary to popular belief, Lorem Ipsum is simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.3 and 1.10.33 of  (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,',
    imagePath: 'iphone.jpg',
    date: '12th August, 2020',
    rating: 4.5,
  ),
];
