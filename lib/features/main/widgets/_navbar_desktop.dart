part of '../main_section.dart';

class _NavbarDesktop extends StatefulWidget {
  const _NavbarDesktop({Key? key}) : super(key: key);

  @override
  State<_NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<_NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // theme
    var theme = Theme.of(context);
    return BlocBuilder<ThemeCubit, ThemeState>(builder: (context, state) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: size.width / 8, vertical: 10),
        color: theme.navBarColor,
        child: Row(
          children: [
            const NavBarLogo(),
            // Space.xm!,
            const Spacer(),

            ...NavBarUtils.names.asMap().entries.map(
                  (e) => NavBarActionButton(
                    label: e.value,
                    index: e.key,
                  ),
                ),
            // Space.x!,
            InkWell(
                onTap: () {
                  context.read<ThemeCubit>().updateTheme(!state.isDarkThemeOn);
                },
                child: Image.network(
                  state.isDarkThemeOn ? IconUrls.darkIcon : IconUrls.lightIcon,
                  height: 30,
                  width: 30,
                  color: state.isDarkThemeOn ? Colors.black : Colors.white,
                )),
            // Space.x!,
          ],
        ),
      );
    });
  }
}
