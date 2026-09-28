import 'package:flutter/material.dart';

class CourseDetailScreen extends StatelessWidget {
  const CourseDetailScreen({super.key});

  static const Color primaryBlue = Color(0xFF304FFE);
  static const Color secondaryBlue = Color(0xFF6D5FFD);
  static const Color lightBlueBg = Color(0x19304FFE);
  static const Color darkText = Color(0xFF09101D);
  static const Color bodyText = Color(0xFF555F6D);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 12.0),
              child: _buildHeader(context),
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _buildBanner(),
                    const SizedBox(height: 20),
                    _buildTagsRow(),
                    const SizedBox(height: 16),
                    const Text(
                      '3D Design Basic',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w700,
                        color: darkText,
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'In this course you will learn how to build a space to a 3-dimensional product. There are 24 premium learning videos for you.',
                      style: TextStyle(
                        fontSize: 15,
                        height: 1.5,
                        color: bodyText,
                      ),
                    ),
                    const SizedBox(height: 24),
                    _buildLessonsHeader(),
                    const SizedBox(height: 16),
                    _buildLessonCard(),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
            _buildBottomEnrollBar(),
          ],
        ),
      ),
    );
  }

  Widget _buildHeader(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
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
                  color: lightBlueBg,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.arrow_back_ios_new,
                  size: 18,
                  color: primaryBlue,
                ),
              ),
            ),
            const SizedBox(width: 16),
            const Text(
              '3D Design Basic',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: darkText,
              ),
            ),
          ],
        ),
        IconButton(
          icon: const Icon(Icons.bookmark_border, color: darkText, size: 26),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget _buildBanner() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        'assets/project_4/course_banner.png',
        width: double.infinity,
        height: 220,
        fit: BoxFit.cover,
        errorBuilder: (_, __, ___) => Container(
          width: double.infinity,
          height: 220,
          color: const Color(0xFFEEF2F6),
          child: const Icon(Icons.image, size: 48, color: Colors.black26),
        ),
      ),
    );
  }

  Widget _buildTagsRow() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: lightBlueBg,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            children: [
              Icon(Icons.people_outline, color: primaryBlue, size: 16),
              SizedBox(width: 6),
              Text(
                '4,569',
                style: TextStyle(
                  color: primaryBlue,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
          decoration: BoxDecoration(
            color: lightBlueBg,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            children: [
              Icon(Icons.star, color: Colors.amber, size: 16),
              SizedBox(width: 6),
              Text(
                '4.9',
                style: TextStyle(
                  color: primaryBlue,
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [primaryBlue, secondaryBlue],
            ),
            borderRadius: BorderRadius.circular(100),
          ),
          child: const Text(
            'Best Seller',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w600,
              fontSize: 12,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLessonsHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '24 Lessons (20 hours)',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
            color: darkText,
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const Text(
            'See all',
            style: TextStyle(
              color: primaryBlue,
              fontWeight: FontWeight.w700,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildLessonCard() {
    return Container(
      padding: const EdgeInsets.all(14),
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
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/project_4/lesson_1.png',
              width: 60,
              height: 60,
              fit: BoxFit.cover,
              errorBuilder: (_, __, ___) => Container(
                width: 60,
                height: 60,
                color: const Color(0xFFEEF2F6),
                child: const Icon(Icons.play_circle_outline, color: primaryBlue),
              ),
            ),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Introduction to 3D',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: darkText,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  '20 mins',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [primaryBlue, secondaryBlue],
              ),
            ),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 20,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomEnrollBar() {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 16, 24, 20),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Color(0xFFF1F3F6), width: 1),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        height: 54,
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [primaryBlue, secondaryBlue],
            ),
            borderRadius: BorderRadius.circular(100),
            boxShadow: const [
              BoxShadow(
                color: Color(0x33304FFE),
                blurRadius: 18,
                offset: Offset(0, 8),
              ),
            ],
          ),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent,
              shape: const StadiumBorder(),
            ),
            onPressed: () {},
            child: const Text(
              'Enroll - \$24.99',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}