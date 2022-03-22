import 'package:flutter/material.dart';
import 'package:money_management/components/nav_bar.dart';
import 'package:money_management/main.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Icon iconSelected;
  @override
  void initState() {
    super.initState();
    iconSelected = MyApp.themeNotifier.value == ThemeMode.light
        ? const Icon(Icons.dark_mode)
        : const Icon(Icons.light_mode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavBar(),
      // appBar: AppBar(
      //   leading: Builder(
      //     builder: (BuildContext context) {
      //       return IconButton(
      //         icon: const Icon(
      //           Icons.grid_view_rounded,
      //         ),
      //         onPressed: () {
      //           Scaffold.of(context).openDrawer();
      //         },
      //         tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
      //       );
      //     },
      //   ),
      //   title: const Text('Kindacode.com'),
      //   actions: [
      //     IconButton(
      //         icon: iconSelected,
      //         onPressed: () {
      //           setState(() {
      //             MyApp.themeNotifier.value =
      //                 MyApp.themeNotifier.value == ThemeMode.light
      //                     ? ThemeMode.dark
      //                     : ThemeMode.light;
      //             iconSelected = MyApp.themeNotifier.value == ThemeMode.light
      //                 ? const Icon(Icons.dark_mode)
      //                 : const Icon(Icons.light_mode);
      //           });
      //         })
      //   ],
      // ),
      body: Center(child: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.grid_view_rounded,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      )),
    );
  }
}
