import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'package:vertical_landing_page/providers/page_provider.dart';

import 'package:vertical_landing_page/ui/views/about_view.dart';
import 'package:vertical_landing_page/ui/views/contact_view.dart';
import 'package:vertical_landing_page/ui/views/location_view.dart';
import 'package:vertical_landing_page/ui/views/home_view.dart';
import 'package:vertical_landing_page/ui/views/pricing_view.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        backgroundColor: Color(0xff0A0F14),
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              child: Text(
                'Drawer Header',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: const Text('Item 1', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2', style: TextStyle(color: Colors.white)),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Container(
        decoration: buildBoxDecoration(),
        child: Stack(
          children: [
            Positioned.fill(top: 0, child: _HomeBody()),
            Positioned(
              left: 0,
              top: 0,
              child: Menu(size: size),
            ),
            Positioned(
              right: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100 : 10,
              bottom: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100 : 10,
              child: Image.asset(
                "assets/chat.png",
                width: 46,
              ),
            ),
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBoxDecoration() => BoxDecoration(color: Color(0xff0A0F14));
}

class Menu extends StatelessWidget {
  const Menu({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return Container(
      padding: EdgeInsets.symmetric(horizontal: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100.0 : 20),
      color: Color(0xff0A0F14),
      width: size.width,
      height: 90,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset("assets/logo.png"),
          Spacer(
            flex: 1,
          ),
          ResponsiveVisibility(
            visible: ResponsiveBreakpoints.of(context).largerThan(TABLET),
            child: Row(
              children: [
                Text("¿CÓMO FUNCIONA?",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    )),
                SizedBox(width: 30),
                GestureDetector(
                  child: Text("RESERVAR ", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400)),
                  onTap: () => pageProvider.goTo(0),
                ),
                SizedBox(width: 30),
                Text("SOSTENIBILIDAD ", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400)),
                SizedBox(width: 30),
                Text("BLOG ", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          Spacer(
            flex: 1,
          ),
          ResponsiveVisibility(
            visible: ResponsiveBreakpoints.of(context).largerThan(TABLET),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset("assets/ES.png"),
                SizedBox(width: 10),
                Text("ESP ", style: TextStyle(fontSize: 18, color: Colors.white, fontWeight: FontWeight.w400)),
              ],
            ),
          ),
          ResponsiveVisibility(
            visible: !ResponsiveBreakpoints.of(context).largerThan(TABLET),
            child: IconButton(
              onPressed: () {
                if (Scaffold.of(context).isEndDrawerOpen) {
                  Scaffold.of(context).closeEndDrawer();
                } else {
                  Scaffold.of(context).openEndDrawer();
                }
              },
              icon: const Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final pageProvider = Provider.of<PageProvider>(context, listen: false);

    return ListView(
      controller: pageProvider.scrollController,
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      children: [
        HomeView(),
        AboutView(),
        PricingView(),
        ContactView(),
        LocationView(),
      ],
    );
  }
}
