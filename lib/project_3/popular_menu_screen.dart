import 'package:flutter/material.dart';

class FoodItem {
  final String title;
  final String restaurant;
  final int price;
  final String imagePath;

  const FoodItem({
    required this.title,
    required this.restaurant,
    required this.price,
    required this.imagePath,
  });
}

class PopularMenuScreen extends StatelessWidget {
  const PopularMenuScreen({super.key});

  static const Color primaryColor = Color(0xFFF43F5E);
  static const Color primaryLight = Color(0x19F43F5E);
  static const Color darkText = Color(0xFF09101D);
  static const Color subText = Color(0xFF858B94);
  static const Color fieldBg = Color(0xFFF4F6F9);

  static const List<FoodItem> items = [
    FoodItem(
      title: 'Original Salad',
      restaurant: 'Lovy Food',
      price: 8,
      imagePath: 'assets/project_3/salad_original.png',
    ),
    FoodItem(
      title: 'Fresh Salad',
      restaurant: 'Cloudy Resto',
      price: 10,
      imagePath: 'assets/project_3/salad_fresh.png',
    ),
    FoodItem(
      title: 'Yummie Ice Cream',
      restaurant: 'Circlo Resto',
      price: 6,
      imagePath: 'assets/project_3/ice_cream.png',
    ),
    FoodItem(
      title: 'Vegan Special',
      restaurant: 'Haty Food',
      price: 11,
      imagePath: 'assets/project_3/vegan_special.png',
    ),
    FoodItem(
      title: 'Mixed Pasta',
      restaurant: 'Recto Food',
      price: 13,
      imagePath: 'assets/project_3/pasta.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: Column(
                children: [
                  _buildHeader(context),
                  const SizedBox(height: 24),
                  _buildSearchAndFilter(),
                ],
              ),
            ),
            Expanded(
              child: ListView.separated(
                padding: const EdgeInsets.fromLTRB(24, 8, 24, 24),
                itemCount: items.length,
                separatorBuilder: (_, __) => const SizedBox(height: 16),
                itemBuilder: (context, index) => _buildMenuItemCard(items[index]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomBar(),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      children: [
        InkWell(
          borderRadius: BorderRadius.circular(10),
          onTap: () {
            if (Navigator.canPop(context)) {
              Navigator.pop(context);
            }
          },
          child: Container(
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: primaryLight,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 18,
              color: primaryColor,
            ),
          ),
        ),
        const SizedBox(width: 20),
        const Text(
          'Popular Menu',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.w600,
            color: darkText,
          ),
        ),
      ],
    );
  }

  Widget _buildSearchAndFilter() {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 50,
            decoration: BoxDecoration(
              color: fieldBg,
              borderRadius: BorderRadius.circular(100),
            ),
            child: const TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: subText, fontSize: 14),
                prefixIcon: Icon(Icons.search, color: subText),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: primaryLight,
            borderRadius: BorderRadius.circular(14),
          ),
          child: IconButton(
            icon: const Icon(Icons.tune, color: primaryColor, size: 22),
            onPressed: () {},
          ),
        ),
      ],
    );
  }

  Widget _buildMenuItemCard(FoodItem item) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C5A6CEA),
            blurRadius: 30,
            offset: Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(14),
            child: Image.asset(
              item.imagePath,
              width: 64,
              height: 64,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                width: 64,
                height: 64,
                color: fieldBg,
                child: const Icon(Icons.fastfood, color: subText),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item.title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: darkText,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  item.restaurant,
                  style: const TextStyle(
                    fontSize: 13,
                    color: subText,
                  ),
                ),
              ],
            ),
          ),
          Text(
            '\$${item.price}',
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
              color: primaryColor,
            ),
          ),
          const SizedBox(width: 8),
        ],
      ),
    );
  }

  Widget _buildBottomBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        boxShadow: const [
          BoxShadow(
            color: Color(0x0C5A6CEA),
            blurRadius: 30,
            offset: Offset(0, -5),
          ),
        ],
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              decoration: BoxDecoration(
                color: primaryLight,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Row(
                children: [
                  Icon(Icons.home, color: primaryColor, size: 22),
                  SizedBox(width: 8),
                  Text(
                    'Home',
                    style: TextStyle(
                      color: primaryColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            IconButton(
              icon: const Icon(Icons.shopping_bag_outlined, color: subText, size: 24),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.chat_bubble_outline, color: subText, size: 24),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.person_outline, color: subText, size: 24),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}