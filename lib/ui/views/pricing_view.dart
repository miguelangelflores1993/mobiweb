import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class PricingView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height - 90,
      margin: EdgeInsets.symmetric(horizontal: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100.0 : 20),
      child: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(24)),
                  child: Image.asset(
                    ResponsiveBreakpoints.of(context).largerThan(TABLET) ? "assets/digital.png" : "assets/sostenibilidad.png",
                    width: size.width,
                    fit: BoxFit.fitWidth,
                  ),
                ),
                ResponsiveVisibility(
                  visible: ResponsiveBreakpoints.of(context).largerThan(TABLET),
                  child: Positioned.fill(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 100.0),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Comprometidos con \nel medio ambiente.",
                          style: TextStyle(
                              fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 35 : 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              color: Color(0xff101820),
            ),
            child: Center(
              child: Text(
                "SUSCRIBETE",
                style: TextStyle(
                    fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 35 : 20, color: Colors.white, fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    );
  }
}
