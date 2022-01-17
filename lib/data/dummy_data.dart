
import 'package:homework_2/models/product_model.dart';
import 'package:homework_2/models/tag_model.dart';
import 'package:homework_2/models/user_model.dart';

List<UserModel> users = [
  UserModel(
    name: 'anas abu shanab',
    image_url: 'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    followers: 398,
  ),
  UserModel(
    name: 'azeez eyad',
    image_url: 'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    followers: 9067,
  ),
  UserModel(
    name: 'ahmed khaled',
    image_url: 'https://images.unsplash.com/photo-1628157588553-5eeea00af15c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    followers: 3752,
  ),
  UserModel(
    name: 'waled abu helal',
    image_url: 'https://images.unsplash.com/photo-1472099645785-5658abf4ff4e?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    followers: 690,
  ),
  UserModel(
    name: 'karem wael',
    image_url: 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    followers: 21095,
  ),
];

List<UserModel> topUsers = [
  UserModel(
    name: 'anas abu shanab',
    image_url: 'https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80',
    followers: 398,
  ),
  UserModel(
    name: 'azeez eyad',
    image_url: 'https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    followers: 9067,
  ),
  UserModel(
    name: 'karem wael',
    image_url: 'https://images.unsplash.com/photo-1527980965255-d3b416303d12?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=580&q=80',
    followers: 21095,
  ),
];

  TagModel favorite = TagModel(
    name: 'Favorite',
    image_url: 'assets/icons/star.png',
  );
  TagModel trending = TagModel(
    name: 'Trending',
    image_url: 'assets/icons/rocket-launch.png',
  );
  TagModel recent = TagModel(
    name: 'Recent',
    image_url: 'assets/icons/clock.png',
  );
  TagModel magic = TagModel(
    name: 'Magic',
    image_url: 'assets/icons/magic.png',
  );

  List<TagModel> tags = [favorite,trending,recent,magic];

  List<ProductModel> products = [
    ProductModel(
      user: users[0],
      title: 'Walker Edison Ashbury Coastal Style Grooved Door TV Stand',
      description: 'Top surface supports up to 150 Ibs. and shelves support up to 30 Ibs.3 adjustable shelves for customizable storageSupports TVs up to 80” and cord management port keeps cables tidyShips ready-to-assemble with step-by-step instructions',
      image_url: 'https://m.media-amazon.com/images/I/81MLZMgg8qL._AC_SL1500_.jpg',
      tags: [favorite,recent],
    ),
    ProductModel(
      user: users[1],
      title: 'Mirror Accent Silver Table',
      description: 'The three drawers nightstand,each drawer with crystal handle,easy to pull out,the around drawer is inlaid with diamond .Superior structure and every piece is expertly hand made,it is last forever and never go out of style.',
      image_url: 'https://m.media-amazon.com/images/I/816ftDLw38L._AC_SL1500_.jpg',
      tags: [trending,recent,magic],
    ),
    ProductModel(
      user: users[2],
      title: 'COSYLAND Ottoman Bench',
      description: 'COSYLAND Ottoman Bench with Storage 30x15x15 inches Brown Ottoman for Room Folding Leather Ottoman Footrest Footstool Rectangle Collapsible Furniture with Lid for Bedroom Living Room',
      image_url: 'https://m.media-amazon.com/images/I/81E-ip1wPCL._AC_SL1500_.jpg',
      tags: [favorite,trending,magic],
    ),
    ProductModel(
      user: users[3],
      title: 'Bush Business Furniture',
      description: 'Bush Business Furniture Series C Right Handed L Shaped Desk with Mobile File Cabinet in Hansen Cherry',
      image_url: 'https://m.media-amazon.com/images/I/810VlmosdRL._AC_SL1495_.jpg',
      tags: [trending,recent],
    ),
    ProductModel(
      user: users[4],
      title: '4 Piece Patio Furniture',
      description: 'M & W 4 Piece Patio Furniture Set, PE Wicker Rattan Outdoor Sofa, 2 Cushioned Chairs, 1 Loveseat and 1 Coffee Table with Tempered Glass Top for Garden, Backyard, Porch, Balcony, Lawn, Poolside',
      image_url: 'https://m.media-amazon.com/images/I/81viEXxMU9L._AC_SL1500_.jpg',
      tags: [favorite,magic],
    ),

    ProductModel(
      user: users[0],
      title: 'Walker Edison Ashbury Coastal Style Grooved Door TV Stand',
      description: 'Top surface supports up to 150 Ibs. and shelves support up to 30 Ibs.3 adjustable shelves for customizable storageSupports TVs up to 80” and cord management port keeps cables tidyShips ready-to-assemble with step-by-step instructions',
      image_url: 'https://m.media-amazon.com/images/I/81MLZMgg8qL._AC_SL1500_.jpg',
      tags: [favorite,recent],
    ),
    ProductModel(
      user: users[1],
      title: 'Mirror Accent Silver Table',
      description: 'The three drawers nightstand,each drawer with crystal handle,easy to pull out,the around drawer is inlaid with diamond .Superior structure and every piece is expertly hand made,it is last forever and never go out of style.',
      image_url: 'https://m.media-amazon.com/images/I/816ftDLw38L._AC_SL1500_.jpg',
      tags: [trending,recent,magic],
    ),
    ProductModel(
      user: users[2],
      title: 'COSYLAND Ottoman Bench',
      description: 'COSYLAND Ottoman Bench with Storage 30x15x15 inches Brown Ottoman for Room Folding Leather Ottoman Footrest Footstool Rectangle Collapsible Furniture with Lid for Bedroom Living Room',
      image_url: 'https://m.media-amazon.com/images/I/81E-ip1wPCL._AC_SL1500_.jpg',
      tags: [favorite,trending,magic],
    ),
    ProductModel(
      user: users[3],
      title: 'Bush Business Furniture',
      description: 'Bush Business Furniture Series C Right Handed L Shaped Desk with Mobile File Cabinet in Hansen Cherry',
      image_url: 'https://m.media-amazon.com/images/I/810VlmosdRL._AC_SL1495_.jpg',
      tags: [trending,recent],
    ),
    ProductModel(
      user: users[4],
      title: '4 Piece Patio Furniture',
      description: 'M & W 4 Piece Patio Furniture Set, PE Wicker Rattan Outdoor Sofa, 2 Cushioned Chairs, 1 Loveseat and 1 Coffee Table with Tempered Glass Top for Garden, Backyard, Porch, Balcony, Lawn, Poolside',
      image_url: 'https://m.media-amazon.com/images/I/81viEXxMU9L._AC_SL1500_.jpg',
      tags: [favorite,magic],
    ),
];

