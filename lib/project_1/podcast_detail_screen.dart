import 'package:flutter/material.dart';

class PodcastDetailScreen extends StatelessWidget {
  const PodcastDetailScreen({super.key});

  static const Color primaryOrange = Color(0xFFFE7A15);
  static const Color darkCardColor = Color(0xFF3F3284);
  static const Color darkCardFooter = Color(0xFF1C0F5A);
  static const Color tagColor = Color(0xFF271D5A);
  static const Color yellowCard = Color(0xFFF8D910);
  static const Color liveColor = Color(0xFFF24E1E);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFAF6F5),
      body: SingleChildScrollView(
        child: Column(
          children: const [
            _PodcastHeader(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SizedBox(height: 12),
                  _TitleSection(),
                  SizedBox(height: 24),
                  _HostCard(),
                  SizedBox(height: 20),
                  _InviteCard(),
                  SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _PodcastHeader extends StatelessWidget {
  const _PodcastHeader();

  @override
  Widget build(BuildContext context) {
    const double avatarRadius = 50;

    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        Container(
          height: 240,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/project_1/header_cover.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: CircleAvatar(
                  backgroundColor: Colors.white.withValues(alpha: 0.7),
                  child: IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.black87),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),
        ),
        Positioned(
          bottom: -avatarRadius,
          child: Container(
            padding: const EdgeInsets.all(6),
            decoration: const BoxDecoration(
              color: Color(0xFFFAF6F5),
              shape: BoxShape.circle,
            ),
            child: const CircleAvatar(
              radius: avatarRadius,
              backgroundColor: PodcastDetailScreen.primaryOrange,
              child: Icon(Icons.podcasts, size: 48, color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 46),
        const Text(
          'Secrets of Atlantis',
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.w700,
            fontFamily: 'Montserrat',
            color: Color(0xFF111111),
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 12),
        OutlinedButton(
          style: OutlinedButton.styleFrom(
            foregroundColor: PodcastDetailScreen.primaryOrange,
            side: const BorderSide(color: PodcastDetailScreen.primaryOrange, width: 1.5),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 10),
          ),
          onPressed: () {},
          child: const Text('Follow', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
        ),
      ],
    );
  }
}

class _HostCard extends StatelessWidget {
  const _HostCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: PodcastDetailScreen.darkCardColor,
        borderRadius: BorderRadius.circular(28),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(
                      radius: 26,
                      backgroundImage: AssetImage('assets/project_1/host_avatar.png'),
                    ),
                    const SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Codin',
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),
                        ),
                        const SizedBox(height: 4),
                        Container(
                          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                          decoration: BoxDecoration(
                            color: const Color(0xFF262044),
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: const Text('Host', style: TextStyle(color: Colors.white70, fontSize: 12)),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Text.rich(
                  TextSpan(
                    text: 'The Secrets of Atlantis podcast is designed for all fantasy enthusiasts, everything from debunking underwat... ',
                    style: TextStyle(color: Colors.white.withValues(alpha: 0.9), fontSize: 13, height: 1.5),
                    children: const [
                      TextSpan(text: 'see more', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white)),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      decoration: BoxDecoration(
                        color: PodcastDetailScreen.tagColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Row(
                        children: [
                          Icon(Icons.star, color: Colors.amber, size: 16),
                          SizedBox(width: 4),
                          Text('4.8 (10)', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                    const SizedBox(width: 8),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: PodcastDetailScreen.tagColor,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text('Fantasy', style: TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.bold)),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.share_outlined, color: Colors.white70),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 14),
            decoration: const BoxDecoration(
              color: PodcastDetailScreen.darkCardFooter,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(28),
                bottomRight: Radius.circular(28),
              ),
            ),
            child: Row(
              children: [
                const _OverlappingAvatars(),
                const Spacer(),
                Row(
                  children: const [
                    Icon(Icons.fiber_manual_record, color: PodcastDetailScreen.liveColor, size: 14),
                    SizedBox(width: 4),
                    Text('Live', style: TextStyle(color: PodcastDetailScreen.liveColor, fontWeight: FontWeight.bold, fontSize: 16)),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _OverlappingAvatars extends StatelessWidget {
  const _OverlappingAvatars();

  @override
  Widget build(BuildContext context) {
    const avatars = [
      'assets/project_1/user_1.png',
      'assets/project_1/user_2.png',
      'assets/project_1/user_3.png',
      'assets/project_1/user_4.png',
    ];

    return SizedBox(
      height: 36,
      width: 150,
      child: Stack(
        children: [
          for (int i = 0; i < avatars.length; i++)
            Positioned(
              left: i * 22.0,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: PodcastDetailScreen.darkCardFooter, width: 2),
                ),
                child: CircleAvatar(
                  radius: 16,
                  backgroundImage: AssetImage(avatars[i]),
                ),
              ),
            ),
          Positioned(
            left: avatars.length * 22.0,
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: PodcastDetailScreen.darkCardFooter, width: 2),
              ),
              child: const CircleAvatar(
                radius: 16,
                backgroundColor: PodcastDetailScreen.primaryOrange,
                child: Text('+10', style: TextStyle(color: Colors.white, fontSize: 10, fontWeight: FontWeight.bold)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InviteCard extends StatelessWidget {
  const _InviteCard();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: BoxDecoration(
        color: PodcastDetailScreen.yellowCard,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
            ),
            child: const Icon(Icons.card_giftcard, size: 30, color: Color(0xFF32ABFF)),
          ),
          const SizedBox(width: 16),
          const Expanded(
            child: Text(
              'Invite your friends to join',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.black),
            ),
          ),
          CircleAvatar(
            backgroundColor: Colors.black,
            radius: 18,
            child: IconButton(
              padding: EdgeInsets.zero,
              icon: const Icon(Icons.arrow_forward, color: Colors.white, size: 18),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}