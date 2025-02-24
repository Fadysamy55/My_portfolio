class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  ProjectUtils(
    banners: 'assets/imgs/project5.jpg',
    icons: 'assets/imgs/flutter.png',
    titles: 'E-Learning APP',
    description:
        'E-Learning App is an interactive E-Learning app for kids to learn Japanese and English in a fun way. By tapping on icons or words, kids can hear the Japanese pronunciation along with the English translation. With a simple UI, colorful visuals, and engaging experience, it makes learning easy and enjoyable',
    links: 'https://github.com/Fadysamy55/E-Learning-App',
  ),
  ProjectUtils(
    banners: 'assets/imgs/project4.jpg',
    icons: 'assets/imgs/flutter.png',
    titles: 'Chat Gemini App',
    description:
        'This is a just Fully functional Chat Gemini by using flutter, source code is also available, check below.',
    links: '',
  ),
  ProjectUtils(
    banners: 'assets/imgs/project1.jpg',
    icons: 'assets/imgs/flutter.png',
    titles: ' NEW TREND App',
    description:
        'New Trend is a modern E-Commerce Flutter app designed for a seamless shopping experience. It features secure payments, real-time order tracking, favorites, and cart management. With a user-friendly UI and high performance, it ensures smooth navigation, personalized recommendations, and scalability for future growth.',
    links: 'https://github.com/Fadysamy55/New-Trend-',
  ),
  ProjectUtils(
    banners: 'assets/imgs/project2.jpg',
    icons: 'assets/imgs/flutter.png',
    titles: 'Chat App',
    description:
        'Chat App is a real-time chat app built with Flutter, offering secure messaging, voice calls, media sharing, and group chats. It features end-to-end encryption, customizable themes, and instant notifications for a seamless communication experience. With a sleek UI and high performance, it ensures fast and reliable connectivity',
    links: 'https://github.com/Fadysamy55/Chat-App',
  ),
  ProjectUtils(
    banners: 'assets/imgs/project3.jpg',
    icons: 'assets/imgs/flutter.png',
    titles: 'Pharaonic Scaning System ',
    description:
        'Our project enhances Egypt’s tourism by offering a digital, self-guided exploration solution. It reduces dependence on traditional guides, improves accessibility, and enriches visitor engagement at historic sites and Pharaonic statues. Tourists gain instant, on-the-go access to statue data for a seamless experience.',
    links: 'https://github.com/Fadysamy55/Pharaonic-Scanning-System-',
  ),
];
