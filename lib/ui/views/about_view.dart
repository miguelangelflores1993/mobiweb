import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class AboutView extends StatefulWidget {
  @override
  State<AboutView> createState() => _AboutViewState();
}

class _AboutViewState extends State<AboutView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height - 90,
      margin: EdgeInsets.symmetric(horizontal: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100.0 : 20, vertical: 50),
      padding: EdgeInsets.symmetric(
        vertical: 100,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: Color(0xff101820),
      ),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: Transform(
                alignment: Alignment.center,
                transform: Matrix4.identity()..scale(-1.0, 1.0, 1.0), // Escala negativa en el eje X

                child: Image.asset(
                  "assets/moped.png",
                ),
              )),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset("assets/moped.png"),
                SizedBox(
                  height: 100,
                ),
                Text(
                  "MOPED CK1",
                  style: TextStyle(
                      fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 45 : 20, color: Colors.white, fontWeight: FontWeight.w600),
                ),
                Text(
                  "La primera moped eléctrica diseñada y desarrollada en Bolivia, controlada y monitoreada tecnológicamente.",
                  textAlign: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? TextAlign.start : TextAlign.center,
                  style: TextStyle(
                    fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 24 : 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
