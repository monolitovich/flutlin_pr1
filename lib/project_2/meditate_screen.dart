import 'package:flutter/material.dart';

class MeditateScreen extends StatelessWidget {
  const MeditateScreen({super.key});

  static const Color primaryTeal = Color(0xFF039EA2);
  static const Color titleColor = Color(0xFF1E1E1E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildTopBanner(),
              const SizedBox(height: 24),
              const Text(
                'Peter Mach',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54,
                ),
              ),
              const SizedBox(height: 6),
              const Text(
                'Mind Deep Relax',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                  color: titleColor,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Join the Community as we prepare over 33 days to relax and feel joy with the mind and happnies session across the World.',
                style: TextStyle(
                  fontSize: 14,
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                  color: titleColor,
                ),
              ),
              const SizedBox(height: 24),
              _buildPlayButton(),
              const SizedBox(height: 28),
              _buildSessionItem(
                title: 'Sweet Memories',
                subtitle: 'December 29 Pre-Launch',
                color: const Color(0xFF2F80ED),
              ),
              _buildSessionItem(
                title: 'A Day Dream',
                subtitle: 'December 29 Pre-Launch',
                color: const Color(0xFF039EA2),
              ),
              _buildSessionItem(
                title: 'Mind Explore',
                subtitle: 'December 29 Pre-Launch',
                color: const Color(0xFFF09235),
                isLast: true,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTopBanner() {
    return Container(
      width: double.infinity,
      height: 220,
      decoration: BoxDecoration(
        color: const Color(0xFFF2C94C),
        borderRadius: BorderRadius.circular(16),
        image: const DecorationImage(
          image: AssetImage('assets/project_2/banner.png'),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _buildPlayButton() {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryTeal,
          elevation: 0,
          shape: const StadiumBorder(),
        ),
        onPressed: () {},
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.play_arrow, color: Colors.white, size: 24),
            SizedBox(width: 8),
            Text(
              'Play Next Session',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSessionItem({
    required String title,
    required String subtitle,
    required Color color,
    bool isLast = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        border: isLast
            ? null
            : const Border(
                bottom: BorderSide(color: Color(0xFFEBEBEB), width: 1),
              ),
      ),
      child: Row(
        children: [
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.play_arrow,
              color: Colors.white,
              size: 24,
            ),
          ),
          const SizedBox(width: 14),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: titleColor,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.black45,
                  ),
                ),
              ],
            ),
          ),
          IconButton(
            icon: const Icon(Icons.more_horiz, color: Color(0xFFBDBDBD)),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}