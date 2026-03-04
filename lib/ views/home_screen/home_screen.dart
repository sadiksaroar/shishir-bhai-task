import 'package:aitso/%20views/home_screen/categories/categories.dart';
import 'package:aitso/core/custom_navgation.dart';
import 'package:aitso/core/gen/assets.gen.dart';
import 'package:aitso/utils/app_text_styles.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeader(),
            const SizedBox(height: 20),
            _buildUpcomingSchedule(),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Categories(),
            ),
            _buildBMIBanner(),
            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle navigation tap if needed
        },
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFEFF4F8),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(60)),
      ),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Row(
              children: [
                SizedBox(
                  width: 58,
                  height: 58,
                  child: Stack(
                    children: [
                      Container(
                        width: 58,
                        height: 58,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color(0xFF3DBD9E),
                            width: 2,
                          ),
                        ),
                      ),
                      Positioned(
                        top: 6,
                        left: 6,
                        child: Container(
                          width: 46,
                          height: 46,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Hi, ',
                            style: GoogleFonts.mulish(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w400,
                              letterSpacing: 0.46,
                            ),
                          ),
                          Text(
                            'Masud Rana',
                            style: GoogleFonts.mulish(
                              color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.46,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 2),
                      Text(
                        'How is Your Health?',
                        style: GoogleFonts.mulish(
                          color: const Color(0xFF354259),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.38,
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        Assets.images.notificationIcon.path,
                        width: 26,
                        height: 26,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 8,
                      child: Image.asset(
                        Assets.images.colorsRed.path,
                        width: 9,
                        height: 9,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset(
                    Assets.images.serachIcon.path,
                    width: 26,
                    height: 26,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Find Your Desired ',
                    style: AppTextStyles.heading,
                  ),
                  TextSpan(
                    text: 'Doctor Right Now.!',
                    style: AppTextStyles.highlightHeading,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUpcomingSchedule() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Upcoming Schedule', style: AppTextStyles.darkExtraBold17),
              TextButton(
                onPressed: () {},
                child: Text('SEE ALL', style: AppTextStyles.accentExtraBold14),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                image: AssetImage(Assets.images.schedule.path),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('OPD: Room 416', style: AppTextStyles.whiteBold18),
                  const SizedBox(height: 4),
                  Text('General Physician', style: AppTextStyles.whiteBold14),
                  const SizedBox(height: 16),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    width: 155,
                    height: 40,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF18594A),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: Text(
                      'SEP 02, 06:30PM',
                      style: AppTextStyles.whiteExtraBold14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBMIBanner() {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: SizedBox(
        width: double.infinity,
        height: 192,
        child: Row(
          children: [
            Image.asset(
              Assets.images.mean.path,
              width: 152,
              height: 152,
              // fit: BoxFit.cover,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 14,
                  vertical: 18,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Track your health with \n BMI calculator',
                        style: GoogleFonts.mulish(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.black,
                          height: 1.35,
                        ),
                      ),
                      const SizedBox(height: 12),
                      Text(
                        'Calculate now to find out your BMI',
                        style: GoogleFonts.mulish(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          height: 1.4,
                        ),
                      ),
                      const SizedBox(height: 10),

                      SizedBox(
                        height: 40,
                        width: double.infinity,
                        child: OutlinedButton(
                          onPressed: () {},
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            side: BorderSide(
                              color: Color(0xFF4A90E2),
                              width: 2,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 24,
                              vertical: 14,
                            ),
                          ),
                          child: Text(
                            'Calculate Now',
                            style: TextStyle(
                              color: Color(0xFF4A90E2),
                              fontSize: 15,
                              fontWeight: FontWeight.w900,
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
