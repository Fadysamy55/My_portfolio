// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:my_protfolio_using_flutter/core/color/colors.dart';
// import 'package:my_protfolio_using_flutter/core/theme/app_theme.dart';

// class SkillsSection extends StatefulWidget {
//   @override
//   State<SkillsSection> createState() => _SkillsSectionState();
// }

// class _SkillsSectionState extends State<SkillsSection> {
//   bool isHover = false;
//   final List<Map<String, dynamic>> skills = [
//     {
//       "title": "Flutter",
//       "image":
//           "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg"
//     },
//     {
//       "title": "Dart",
//       "image":
//           "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/dart/dart-original.svg"
//     },
//     {
//       "title": "Firebase",
//       "image":
//           "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/firebase/firebase-plain.svg"
//     },
//     {
//       "title": "Problem Solving",
//       "image": "assets/icons/problem_solving-removebg-preview.png",
//       "isAsset": true,
//     },
//     {
//       "title": "Git",
//       "image":
//           "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg"
//     },
//     {
//       "title": "Figma",
//       "image":
//           "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/figma/figma-original.svg"
//     },
//     {
//       "title": "GitHub",
//       "image":
//           "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg"
//     },
//     {
//       "title": "API",
//       "image": "assets/icons/api_image.svg",
//       "isAsset": true,
//     },
//     {
//       "title": "Sqflite",
//       "image": "https://www.vectorlogo.zone/logos/sqlite/sqlite-icon.svg"
//     },
//   ];

//   @override
//   Widget build(BuildContext context) {
//     final isDarkMode = Theme.of(context).brightness == Brightness.dark;

//     return LayoutBuilder(
//       builder: (context, constraints) {
//         double screenWidth = constraints.maxWidth;

//         int crossAxisCount = screenWidth > 1200
//             ? 5
//             : screenWidth > 800
//                 ? 4
//                 : 3;

//         return Padding(
//           padding: const EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text(
//                 "My Skills",
//                 style: TextStyle(
//                   fontSize: screenWidth * 0.03,
//                   fontWeight: FontWeight.bold,
//                   color: isDarkMode ? Colors.white : Colors.black,
//                 ),
//               ),
//               const SizedBox(height: 16),
//               InkWell(
//                 hoverColor: Colors.transparent,
//                 splashColor: Colors.transparent,
//                 highlightColor: Colors.transparent,
//                 onTap: () {},
//                 onHover: (isHovering) {
//                   if (isHovering) {
//                     setState(() => isHover = true);
//                   } else {
//                     setState(() => isHover = false);
//                   }
//                 },
//                 child: GridView.builder(
//                   shrinkWrap: true,
//                   physics: NeverScrollableScrollPhysics(),
//                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: crossAxisCount,
//                     childAspectRatio: screenWidth < 600 ? 1 : 1.2,
//                     crossAxisSpacing: 16,
//                     mainAxisSpacing: 16,
//                   ),
//                   itemCount: skills.length,
//                   itemBuilder: (context, index) {
//                     return SkillCard(
//                       title: skills[index]["title"],
//                       imageUrl: skills[index]["image"],
//                       screenWidth: screenWidth,
//                       isAsset: skills[index]["isAsset"] ?? false,
//                     );
//                   },
//                 ),
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

// class SkillCard extends StatelessWidget {
//   final String title;
//   final String imageUrl;
//   final double screenWidth;
//   final bool isAsset;

//   const SkillCard({
//     Key? key,
//     required this.title,
//     required this.imageUrl,
//     required this.screenWidth,
//     required this.isAsset,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         final isDarkMode = Theme.of(context).brightness == Brightness.dark;

//         bool isSvg = imageUrl.toLowerCase().endsWith('.svg');
//         double iconSize = screenWidth > 1200
//             ? screenWidth * 0.05
//             : screenWidth > 800
//                 ? screenWidth * 0.05
//                 : screenWidth * 0.1;

//         double fontSize = screenWidth > 1200
//             ? 25
//             : screenWidth > 800
//                 ? 20
//                 : 16;
//         var theme = Theme.of(context);

//         return Container(
//           padding: EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             gradient: theme.serviceCard,
//             borderRadius: BorderRadius.circular(15),
//             boxShadow: [blackColorShadow],
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: isAsset
//                     ? SvgPicture.asset(
//                         imageUrl,
//                         width: iconSize,
//                         height: iconSize,
//                         fit: BoxFit.contain,
//                       )
//                     : isSvg
//                         ? SvgPicture.network(
//                             imageUrl,
//                             width: iconSize,
//                             height: iconSize,
//                             fit: BoxFit.contain,
//                           )
//                         : CachedNetworkImage(
//                             imageUrl: imageUrl,
//                             width: iconSize,
//                             height: iconSize,
//                             fit: BoxFit.contain,
//                             errorWidget: (context, url, error) => const Icon(
//                               Icons.error,
//                               size: 40,
//                               color: Colors.red,
//                             ),
//                           ),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 title,
//                 style: TextStyle(
//                   fontSize: fontSize,
//                   fontWeight: FontWeight.bold,
//                   color: isDarkMode ? Colors.white : Colors.black,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:my_protfolio_using_flutter/core/color/colors.dart';
import 'package:my_protfolio_using_flutter/core/theme/app_theme.dart';

class SkillsSection extends StatefulWidget {
  @override
  State<SkillsSection> createState() => _SkillsSectionState();
}

class _SkillsSectionState extends State<SkillsSection> {
  bool isHover = false;
  final List<Map<String, dynamic>> skills = [
    {
      "title": "Flutter",
      "image":
          "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/flutter/flutter-original.svg"
    },
    {
      "title": "Dart",
      "image":
          "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/dart/dart-original.svg"
    },
    {
      "title": "Firebase",
      "image":
          "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/firebase/firebase-plain.svg"
    },
    {
      "title": "Problem Solving",
      "image": "assets/icons/problem_solving-removebg-preview.png",
      "isAsset": true,
    },
    {
      "title": "Git",
      "image":
          "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/git/git-original.svg"
    },
    {
      "title": "Figma",
      "image":
          "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/figma/figma-original.svg"
    },
    {
      "title": "GitHub",
      "image":
          "https://cdn.jsdelivr.net/gh/devicons/devicon/icons/github/github-original.svg"
    },
    {
      "title": "API",
      "image": "assets/icons/api_image.svg",
      "isAsset": true,
    },
    {
      "title": "Sqflite",
      "image": "https://www.vectorlogo.zone/logos/sqlite/sqlite-icon.svg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return LayoutBuilder(
      builder: (context, constraints) {
        double screenWidth = constraints.maxWidth;

        int crossAxisCount = screenWidth > 1200
            ? 5
            : screenWidth > 800
                ? 4
                : 3;

        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "My Skills",
                style: TextStyle(
                  fontSize: screenWidth * 0.03,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(height: 16),
              InkWell(
                hoverColor: Colors.transparent,
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {},
                onHover: (isHovering) {
                  if (isHovering) {
                    setState(() => isHover = true);
                  } else {
                    setState(() => isHover = false);
                  }
                },
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    childAspectRatio: screenWidth < 600 ? 1 : 1.2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: skills.length,
                  itemBuilder: (context, index) {
                    return SkillCard(
                      title: skills[index]["title"],
                      imageUrl: skills[index]["image"],
                      screenWidth: screenWidth,
                      isAsset: skills[index]["isAsset"] ?? false,
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class SkillCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final double screenWidth;
  final bool isAsset;

  const SkillCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.screenWidth,
    required this.isAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final isDarkMode = Theme.of(context).brightness == Brightness.dark;

        bool isSvg = imageUrl.toLowerCase().endsWith('.svg');
        bool isPng = imageUrl.toLowerCase().endsWith('.png');
        double iconSize = screenWidth > 1200
            ? screenWidth * 0.05
            : screenWidth > 800
                ? screenWidth * 0.05
                : screenWidth * 0.1;

        // تكبير أيقونة Problem Solving بنسبة 25%
        if (title == "Problem Solving") {
          iconSize *= 1.25;
        }

        double fontSize = screenWidth > 1200
            ? 25
            : screenWidth > 800
                ? 20
                : 16;
        var theme = Theme.of(context);

        return Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
            gradient: theme.serviceCard,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [blackColorShadow],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: isAsset
                    ? (isSvg
                        ? SvgPicture.asset(
                            imageUrl,
                            width: iconSize,
                            height: iconSize,
                            fit: BoxFit.contain,
                          )
                        : Image.asset(
                            imageUrl,
                            width: iconSize,
                            height: iconSize,
                            fit: BoxFit.contain,
                          ))
                    : isSvg
                        ? SvgPicture.network(
                            imageUrl,
                            width: iconSize,
                            height: iconSize,
                            fit: BoxFit.contain,
                          )
                        : CachedNetworkImage(
                            imageUrl: imageUrl,
                            width: iconSize,
                            height: iconSize,
                            fit: BoxFit.contain,
                            errorWidget: (context, url, error) => const Icon(
                              Icons.error,
                              size: 40,
                              color: Colors.red,
                            ),
                          ),
              ),
              const SizedBox(height: 10),
              Text(
                title,
                style: TextStyle(
                  fontSize: fontSize,
                  fontWeight: FontWeight.bold,
                  color: isDarkMode ? Colors.white : Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        );
      },
    );
  }
}


// class SkillCard extends StatelessWidget {
//   final String title;
//   final String imageUrl;
//   final double screenWidth;
//   final bool isAsset;

//   const SkillCard({
//     Key? key,
//     required this.title,
//     required this.imageUrl,
//     required this.screenWidth,
//     required this.isAsset,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return LayoutBuilder(
//       builder: (context, constraints) {
//         final isDarkMode = Theme.of(context).brightness == Brightness.dark;

//         bool isSvg = imageUrl.toLowerCase().endsWith('.svg');
//         bool isPng = imageUrl.toLowerCase().endsWith('.png');
//         double iconSize = screenWidth > 1200
//             ? screenWidth * 0.05
//             : screenWidth > 800
//                 ? screenWidth * 0.05
//                 : screenWidth * 0.1;

//         double fontSize = screenWidth > 1200
//             ? 25
//             : screenWidth > 800
//                 ? 20
//                 : 16;
//         var theme = Theme.of(context);

//         return Container(
//           padding: EdgeInsets.all(12),
//           decoration: BoxDecoration(
//             gradient: theme.serviceCard,
//             borderRadius: BorderRadius.circular(15),
//             boxShadow: [blackColorShadow],
//           ),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Expanded(
//                 child: isAsset
//                     ? (isSvg
//                         ? SvgPicture.asset(
//                             imageUrl,
//                             width: iconSize,
//                             height: iconSize,
//                             fit: BoxFit.contain,
//                           )
//                         : Image.asset(
//                             imageUrl,
//                             width: iconSize,
//                             height: iconSize,
//                             fit: BoxFit.contain,
//                           ))
//                     : isSvg
//                         ? SvgPicture.network(
//                             imageUrl,
//                             width: iconSize,
//                             height: iconSize,
//                             fit: BoxFit.contain,
//                           )
//                         : CachedNetworkImage(
//                             imageUrl: imageUrl,
//                             width: iconSize,
//                             height: iconSize,
//                             fit: BoxFit.contain,
//                             errorWidget: (context, url, error) => const Icon(
//                               Icons.error,
//                               size: 40,
//                               color: Colors.red,
//                             ),
//                           ),
//               ),
//               const SizedBox(height: 10),
//               Text(
//                 title,
//                 style: TextStyle(
//                   fontSize: fontSize,
//                   fontWeight: FontWeight.bold,
//                   color: isDarkMode ? Colors.white : Colors.black,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }
