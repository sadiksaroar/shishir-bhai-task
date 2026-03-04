// import 'package:aitso/core/gen/assets.gen.dart';
// import 'package:aitso/utils/app_text_styles.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

// class _CategorySpec {
//   final String name;
//   final String image;
//   final double imgWidth;
//   final double imgHeight;
//   final double top;
//   final double left;

//   const _CategorySpec({
//     required this.name,
//     required this.image,
//     required this.imgWidth,
//     required this.imgHeight,
//     required this.top,
//     required this.left,
//   });
// }

// class Categories extends StatelessWidget {
//   Categories({super.key});

//   final List<_CategorySpec> categories = [
//     _CategorySpec(
//       name: 'Cardiology',
//       image: Assets.images.cardolgey.path,
//       imgWidth: 25.31,
//       imgHeight: 34.46,
//       top: 21.77,
//       left: 29.44,
//     ),
//     _CategorySpec(
//       name: 'Psychology',
//       image: Assets.images.tromaSentar.path,
//       imgWidth: 38.50,
//       imgHeight: 38.50,
//       top: 19.00,
//       left: 24.50,
//     ),
//     _CategorySpec(
//       name: 'Lungs',
//       image: Assets.images.lungch.path,
//       imgWidth: 37.40,
//       imgHeight: 37.96,
//       top: 20.00,
//       left: 26.00,
//     ),
//     _CategorySpec(
//       name: 'Dentist',
//       image: Assets.images.dentist.path,
//       imgWidth: 49.83,
//       imgHeight: 36.45,
//       top: 20.53,
//       left: 20.00,
//     ),
//     _CategorySpec(
//       name: 'Lungs',
//       image: Assets.images.lungch.path,
//       imgWidth: 37.40,
//       imgHeight: 37.96,
//       top: 20.00,
//       left: 26.00,
//     ),
//     _CategorySpec(
//       name: 'Neurology',
//       image: Assets.images.neurolgy.path,
//       imgWidth: 36.97,
//       imgHeight: 38.09,
//       top: 19.91,
//       left: 30.03,
//     ),
//     _CategorySpec(
//       name: 'Cardiology',
//       image: Assets.images.cardolgey.path,
//       imgWidth: 25.31,
//       imgHeight: 34.46,
//       top: 21.77,
//       left: 29.44,
//     ),
//     _CategorySpec(
//       name: 'Blood Test',
//       image: Assets.images.bloodTest.path,
//       imgWidth: 23.81,
//       imgHeight: 41.00,
//       top: 17.00,
//       left: 36.32,
//     ),
//   ];

//   Widget _buildCategoryItem(_CategorySpec spec) {
//     // Container tile height driven by top + imgHeight + label area (~30px)
//     const double tileHeight = 90.0;

//     return Container(
//       height: tileHeight,
//       decoration: ShapeDecoration(
//         color: const Color(0xFFF6F9FE),
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       ),
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           // Precisely positioned icon
//           Positioned(
//             top: spec.top,
//             left: spec.left,
//             child: Image.asset(
//               spec.image,
//               width: spec.imgWidth,
//               height: spec.imgHeight,
//               fit: BoxFit.contain,
//             ),
//           ),

//           // Label pinned to the bottom centre
//           SizedBox(height: 10),
//           Positioned(
//             bottom: 8,
//             left: 0,
//             right: 0,
//             child: Text(
//               spec.name,
//               textAlign: TextAlign.center,
//               style: GoogleFonts.mulish(
//                 color: const Color(0xFF354259),
//                 fontSize: 11,
//                 fontWeight: FontWeight.w800,
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             Text('Departments', style: AppTextStyles.darkExtraBold17),
//             Text('SEE ALL', style: AppTextStyles.accentExtraBold14),
//           ],
//         ),
//         GridView.builder(
//           shrinkWrap: true,
//           physics: const NeverScrollableScrollPhysics(),
//           gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 4,
//             crossAxisSpacing: 9,
//             mainAxisSpacing: 10,
//             childAspectRatio: 1.0, // square tiles
//           ),
//           itemCount: categories.length,
//           itemBuilder: (context, index) =>
//               _buildCategoryItem(categories[index]),
//         ),
//       ],
//     );
//   }
// }

import 'package:aitso/core/gen/assets.gen.dart';
import 'package:aitso/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class _CategorySpec {
  final String name;
  final String image;
  final double imgWidth;
  final double imgHeight;
  final double top;
  final double left;

  const _CategorySpec({
    required this.name,
    required this.image,
    required this.imgWidth,
    required this.imgHeight,
    required this.top,
    required this.left,
  });
}

class Categories extends StatelessWidget {
  Categories({super.key});

  // ignore: library_private_types_in_public_api
  final List<_CategorySpec> categories = [
    _CategorySpec(
      name: 'Cardiology',
      image: Assets.images.cardolgey.path,
      imgWidth: 25.31,
      imgHeight: 34.46,
      top: 21.77,
      left: 29.44,
    ),
    _CategorySpec(
      name: 'Psychology',
      image: Assets.images.tromaSentar.path,
      imgWidth: 38.50,
      imgHeight: 38.50,
      top: 19.00,
      left: 24.50,
    ),
    _CategorySpec(
      name: 'Lungs',
      image: Assets.images.lungch.path,
      imgWidth: 37.40,
      imgHeight: 37.96,
      top: 20.00,
      left: 26.00,
    ),
    _CategorySpec(
      name: 'Dentist',
      image: Assets.images.dentist.path,
      imgWidth: 49.83,
      imgHeight: 36.45,
      top: 20.53,
      left: 20.00,
    ),
    _CategorySpec(
      name: 'Lungs',
      image: Assets.images.lungch.path,
      imgWidth: 37.40,
      imgHeight: 37.96,
      top: 20.00,
      left: 26.00,
    ),
    _CategorySpec(
      name: 'Neurology',
      image: Assets.images.neurolgy.path,
      imgWidth: 36.97,
      imgHeight: 38.09,
      top: 19.91,
      left: 30.03,
    ),
    _CategorySpec(
      name: 'Cardiology',
      image: Assets.images.cardolgey.path,
      imgWidth: 25.31,
      imgHeight: 34.46,
      top: 21.77,
      left: 29.44,
    ),
    _CategorySpec(
      name: 'Blood Test',
      image: Assets.images.bloodTest.path,
      imgWidth: 23.81,
      imgHeight: 41.00,
      top: 17.00,
      left: 36.32,
    ),
  ];

  Widget _buildCategoryItem(_CategorySpec spec) {
    // Container tile height driven by top + imgHeight + label area (~30px)
    const double tileHeight = 90.0;

    return Container(
      height: tileHeight,
      decoration: ShapeDecoration(
        color: const Color(0xFFF6F9FE),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Precisely positioned icon
          Positioned(
            top: spec.top,
            left: spec.left,
            child: Image.asset(
              spec.image,
              width: spec.imgWidth,
              height: spec.imgHeight,
              fit: BoxFit.contain,
            ),
          ),

          // Label pinned to the bottom centre
          SizedBox(height: 10),
          Positioned(
            bottom: 8,
            left: 0,
            right: 0,
            child: Text(
              spec.name,
              textAlign: TextAlign.center,
              style: GoogleFonts.mulish(
                color: const Color(0xFF354259),
                fontSize: 12,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Departments', style: AppTextStyles.darkExtraBold17),
            Text('SEE ALL', style: AppTextStyles.accentExtraBold14),
          ],
        ),
        GridView.builder(
          shrinkWrap: true,
          padding: EdgeInsets.zero,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 9,
            mainAxisSpacing: 10,
            childAspectRatio: 1.0,
          ),
          itemCount: categories.length,
          itemBuilder: (context, index) =>
              _buildCategoryItem(categories[index]),
        ),
      ],
    );
  }
}
