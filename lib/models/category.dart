import 'package:ecommerce/designs/designs.dart';
import 'package:flutter_svg/svg.dart';

class Category {
  String name;
  SvgPicture icon;

  Category({
    required this.name,
    required this.icon,
  });

  static List<Category> categoryList() {
    return [
      Category(
        name: 'Phone',
        icon: phonesIcon,
      ),
      Category(
        name: 'Computer',
        icon: computerIcon,
      ),
      Category(
        name: 'Health',
        icon: healthIcon,
      ),
      Category(
        name: 'Books',
        icon: booksIcon,
      ),
    ];
  }
}
