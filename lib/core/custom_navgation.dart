import 'package:aitso/core/gen/assets.gen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNavigationBar extends StatefulWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  void initState() {
    super.initState();
    if (!Get.isRegistered<LanguageController>()) {
      Get.put(LanguageController());
    }
  }

  void _onNavTap(int index) {
    widget.onTap(index);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      decoration: BoxDecoration(color: Colors.white),
      child: SafeArea(
        top: false,
        child: GetBuilder<LanguageController>(
          builder: (controller) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildNavItem(
                  icon: Assets.images.homeIcon.path,
                  label: 'Home'.tr,
                  index: 0,
                  isSelected: widget.currentIndex == 0,
                ),
                _buildNavItem(
                  icon: Assets.images.shutkesIcon.path,
                  label: 'Quests'.tr,
                  index: 1,
                  isSelected: widget.currentIndex == 1,
                ),
                _buildNavItem(
                  icon: Assets.images.cleanderIco.path,
                  label: 'Progress'.tr,
                  index: 2,
                  isSelected: widget.currentIndex == 2,
                ),
                _buildNavItem(
                  icon: Assets.images.deashBoradIcon.path,
                  label: 'Dashboard'.tr,
                  index: 3,
                  isSelected: widget.currentIndex == 3,
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  Widget _buildNavItem({
    required String icon,
    required String label,
    required int index,
    required bool isSelected,
  }) {
    return GestureDetector(
      onTap: () => _onNavTap(index),
      behavior: HitTestBehavior.opaque,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOut,
        padding: EdgeInsets.symmetric(
          horizontal: isSelected ? 16 : 12,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFFFE5B4) : Colors.transparent,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(icon, width: 32, height: 32),
            if (isSelected) ...[
              const SizedBox(width: 8),
              Text(
                label,
                style: GoogleFonts.mulish(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  letterSpacing: 0.80,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class LanguageController extends GetxController {
  void updateLanguage(Locale locale) {
    Get.updateLocale(locale);
    update();
  }
}
