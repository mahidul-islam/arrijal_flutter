import 'package:flutter/material.dart';

const kTextColor = Color(0xFF535353);
const kTextLightColor = Color(0xFFACACAC);

const kDefaultPaddin = 20.0;

var data = [
  {'name': 'iphone', 'des': 'description', 'price': 101, 'image': 'iphone.jpg'},
  {'name': 'laptop', 'des': 'description', 'price': 200, 'image': 'laptop.jpg'},
  {'name': 'iphone', 'des': 'description', 'price': 100, 'image': 'iphone.jpg'},
  {'name': 'laptop', 'des': 'description', 'price': 200, 'image': 'laptop.jpg'},
  {'name': 'iphone', 'des': 'description', 'price': 100, 'image': 'iphone.jpg'},
  {'name': 'laptop', 'des': 'description', 'price': 200, 'image': 'laptop.jpg'},
  {'name': 'iphone', 'des': 'description', 'price': 100, 'image': 'iphone.jpg'},
  {'name': 'laptop', 'des': 'description', 'price': 200, 'image': 'laptop.jpg'},
  {'name': 'iphone', 'des': 'description', 'price': 100, 'image': 'iphone.jpg'},
  {'name': 'laptop', 'des': 'description', 'price': 200, 'image': 'laptop.jpg'},
];

var posts = [
  {'title': 'Demo Title 1', 'des': 'Post description', 'image': 'iphone.jpg'},
  {'title': 'Demo Title 2', 'des': 'Post description', 'image': 'iphone.jpg'},
  {'title': 'Demo Title 3', 'des': 'Post description', 'image': 'iphone.jpg'},
  {'title': 'Demo Title 4', 'des': 'Post description', 'image': 'iphone.jpg'},
  {'title': 'Demo Title 5', 'des': 'Post description', 'image': 'iphone.jpg'},
  {'title': 'Demo Title 6', 'des': 'Post description', 'image': 'iphone.jpg'},
  {'title': 'Demo Title 7', 'des': 'Post description', 'image': 'iphone.jpg'},
  {'title': 'Demo Title 8', 'des': 'Post description', 'image': 'iphone.jpg'},
];

var comments = [
  {'text': 'This is Comment 1', 'image': 'avatar.png'},
  {'text': 'This is Comment 2', 'image': 'avatar.png'},
  {'text': 'This is Comment 3', 'image': 'avatar.png'},
  {'text': 'This is Comment 4', 'image': 'avatar.png'},
  {'text': 'This is Comment 5', 'image': 'avatar.png'},
  {'text': 'This is Comment 6', 'image': 'avatar.png'},
];

var topics = [
  {'title': 'topics 1'},
  {'title': 'topics 2'},
  {'title': 'topics 3'},
];

var alerts = [
  {'text': 'alert no 1', 'seen': true, 'image': 'iphone.jpg'},
  {'text': 'alert no 2', 'seen': true, 'image': 'iphone.jpg'},
  {'text': 'alert no 3', 'seen': true, 'image': 'iphone.jpg'},
];

const users = const {
  'dribbble@gmail.com': '12345',
  'hunter@gmail.com': 'hunter',
  'a@b.com': 'demo',
};

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Chintaporadh",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/book2.jpeg",
      color: Color(0xFF989493)),
  Product(
      id: 2,
      title: "Chintaporadh",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/book2.jpeg",
      color: Color(0xFF989493)),
  Product(
      id: 3,
      title: "Chintaporadh",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/book2.jpeg",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Chintaporadh",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/book2.jpeg",
      color: Color(0xFF989493)),
  Product(
      id: 5,
      title: "Chintaporadh",
      price: 234,
      size: 12,
      description: dummyText,
      image: "assets/images/book2.jpeg",
      color: Color(0xFF989493)),
  Product(
    id: 6,
    title: "Chintaporadh",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/book2.jpeg",
    color: Color(0xFF989493),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
