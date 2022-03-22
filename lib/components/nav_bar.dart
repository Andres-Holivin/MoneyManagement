import 'package:flutter/material.dart';
import 'package:money_management/main.dart';

const double iconSize = 54.0;
const double textIconSize = 14;
Icon iconOff = const Icon(
  Icons.toggle_off,
  color: Colors.black,
  size: iconSize,
);
Icon iconOn = const Icon(
  Icons.toggle_on,
  color: Colors.white,
  size: iconSize,
);

Icon iconPress =
    MyApp.themeNotifier.value == ThemeMode.light ? iconOff : iconOn;

class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
        child: Column(
          children: <Widget>[
            const DrawerHeader(
              child: Center(
                child: Text(
                  'Side menu  FlutterCorner',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.black,
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => {},
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart),
              title: const Text('Cart'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(Icons.border_color),
              title: const Text('Feedback'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              onTap: () => {Navigator.of(context).pop()},
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Light',
                    style: TextStyle(fontSize: textIconSize),
                  ),
                  InkWell(
                    child: iconPress,
                    onTap: () {
                      setState(() {
                        MyApp.themeNotifier.value =
                            MyApp.themeNotifier.value == ThemeMode.light
                                ? ThemeMode.dark
                                : ThemeMode.light;
                        iconPress = MyApp.themeNotifier.value == ThemeMode.light
                            ? iconOff
                            : iconOn;
                      });
                    },
                  ),
                  const Text(
                    'Dark',
                    style: TextStyle(fontSize: textIconSize),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
