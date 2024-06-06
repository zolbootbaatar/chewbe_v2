import 'package:flutter_svg/svg.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:chewbe_v2/Pages/Bottombar/Home/Home.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:chewbe_v2/Pages/Bottombar/Chewbe/ChewbeScreen.dart';

@RoutePage()
class BottomBarIndexPage extends HookConsumerWidget {
  const BottomBarIndexPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Widget> _totalPage = [
      const HomePage(),
      const ChewbePage(),
      const HomePage(),
    ];
    final _selectedIndex = useState(0);

    return Scaffold(
      backgroundColor: Color(0xffF2F2F2),
      body: _totalPage[_selectedIndex.value],
      bottomNavigationBar: SizedBox(
        height: 110,
        child: DotNavigationBar(
          onTap: (index) => _selectedIndex.value = index,
          currentIndex: _selectedIndex.value,
          dotIndicatorColor: Colors.transparent,
          // backgroundColor: Colors.amber.withOpacity(0.3),
          itemPadding: const EdgeInsets.all(0),
          paddingR: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          borderRadius: 60,
          items: [
            DotNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/bottombar/${_selectedIndex.value == 0 ? 'activehome' : 'unactivehome'}.svg',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
            ),
            DotNavigationBarItem(
              icon: Image.asset(
                'assets/bottombar/${_selectedIndex.value == 1 ? 'activelogo' : 'unactivelogo'}.png',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
            ),
            DotNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/bottombar/${_selectedIndex.value == 2 ? 'activehistory' : 'unactivehistory'}.svg',
                fit: BoxFit.cover,
                width: 30,
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
