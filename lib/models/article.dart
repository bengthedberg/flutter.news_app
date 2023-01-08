import 'package:equatable/equatable.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Article extends Equatable {
  final String id;
  final String title;
  final String subtitle;
  final String body;
  final String author;
  final String authorImageUrl;
  final String category;
  final String imageUrl;
  final int views;
  final DateTime createdAt;

  const Article({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.author,
    required this.authorImageUrl,
    required this.category,
    required this.imageUrl,
    required this.views,
    required this.createdAt,
  });

  // Sample Data
  static List<Article> articles = [
    Article(
      id: '1',
      title: 'World Cup Final',
      subtitle: 'A dramatic end to a great world cup!',
      body:
          "Quinoa hammock butcher hexagon four loko vape raw denim. 90's vape four loko butcher organic offal. Disrupt tumblr woke poke, JOMO bushwick lomo sriracha schlitz gochujang. Raclette humblebrag sriracha chia tote bag 8-bit heirloom yr flexitarian sustainable church-key kogi. Bespoke beard hexagon kogi tonx pop-up occupy lomo art party single-origin coffee swag adaptogen microdosing JOMO williamsburg. Tofu XOXO waistcoat, mukbang cloud bread affogato vape gochujang mumblecore hella.",
      author: 'Joe Doe',
      authorImageUrl:
          'https://images.unsplash.com/profile-1569943691387-0a51503076f6image',
      category: 'Sport',
      imageUrl: 'https://images.unsplash.com/photo-1529629468183-b9cddd7be13b',
      views: 1024,
      createdAt: DateTime.now().subtract(const Duration(days: 5)),
    ),
    Article(
      id: '2',
      title: 'The old capital of Japan',
      subtitle: 'Visit Kyoto and step back in time',
      body:
          "Quinoa hammock butcher hexagon four loko vape raw denim. 90's vape four loko butcher organic offal. Disrupt tumblr woke poke, JOMO bushwick lomo sriracha schlitz gochujang. Raclette humblebrag sriracha chia tote bag 8-bit. Bespoke beard hexagon kogi tonx pop-up occupy lomo art party single-origin coffee swag adaptogen microdosing JOMO williamsburg. Tofu XOXO waistcoat, mukbang cloud bread affogato vape gochujang mumblecore hella.",
      author: 'Joe Doe',
      authorImageUrl:
          'https://images.unsplash.com/profile-1569943691387-0a51503076f6image',
      category: 'Travel',
      imageUrl: 'https://images.unsplash.com/photo-1545569341-9eb8b30979d9',
      views: 53450,
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Article(
      id: '3',
      title: 'The sleeping volcano',
      subtitle: 'Mount Fuji is Japans largest mountain, but for how long?',
      body:
          "Raclette humblebrag sriracha chia tote bag 8-bit heirloom yr flexitarian sustainable church-key kogi. Bespoke beard hexagon kogi tonx pop-up occupy lomo art party single-origin coffee swag adaptogen microdosing JOMO williamsburg. Quinoa hammock butcher hexagon four loko vape raw denim. 90's vape four loko butcher organic offal. Disrupt tumblr woke poke, JOMO bushwick lomo sriracha schlitz gochujang. ",
      author: 'Joe Doe',
      authorImageUrl:
          'https://images.unsplash.com/profile-1569943691387-0a51503076f6image',
      category: 'Travel',
      imageUrl: 'https://images.unsplash.com/photo-1490806843957-31f4c9a91c65',
      views: 550,
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
    Article(
      id: '4',
      title: 'Shinjuku Yakitori Alley',
      subtitle: 'Shinjuku Yakitori Alley, Memory Lane or Piss Alley?',
      body:
          "90's vape four loko butcher organic offal. Quinoa hammock butcher hexagon four loko vape raw denim. Disrupt tumblr woke poke, JOMO bushwick lomo sriracha schlitz gochujang. Raclette humblebrag sriracha chia tote bag 8-bit heirloom yr flexitarian sustainable church-key kogi. Bespoke beard hexagon kogi tonx pop-up occupy lomo art party single-origin coffee swag adaptogen microdosing JOMO williamsburg. Tofu XOXO waistcoat, mukbang cloud bread affogato vape gochujang mumblecore hella.",
      author: 'Joe Doe',
      authorImageUrl:
          'https://images.unsplash.com/profile-1569943691387-0a51503076f6image',
      category: 'Travel',
      imageUrl: 'https://images.unsplash.com/photo-1554797589-7241bb691973',
      views: 550,
      createdAt: DateTime.now().subtract(const Duration(days: 2)),
    ),
  ];

  @override
  List<Object?> get props => [
        id,
        title,
        subtitle,
        body,
        author,
        authorImageUrl,
        category,
        imageUrl,
        views,
        createdAt,
      ];
}
