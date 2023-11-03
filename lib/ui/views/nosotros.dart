import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:responsive_framework/responsive_value.dart';

class NosotrosView extends StatefulWidget {
  @override
  State<NosotrosView> createState() => _NosotrosViewState();
}

class _NosotrosViewState extends State<NosotrosView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(24)),
      child: Container(
          width: size.width,
          margin: EdgeInsets.symmetric(horizontal: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100.0 : 20, vertical: 30),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(24)),
            color: Color(0xff101820),
          ),
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(left: 80.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('¿Querés "mobilizarte" \ncon nosotros?', style: TextStyle(fontSize: 48, color: Colors.white, fontWeight: FontWeight.w700)),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [Color(0xffE4002B), Color(0xff7200A6)]),
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xff0A0F14),
                            minimumSize: Size(200, 50),
                            padding: EdgeInsets.all(8),
                            //<-- SEE HERE
                            side: BorderSide(
                              width: 2.0,
                            ),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: Text('Registrate', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ),
                  ],
                ),
              )),
              Expanded(
                  child: ClipRRect(
                borderRadius: BorderRadius.only(topRight: Radius.circular(24), bottomRight: Radius.circular(24)),
                child: Image.asset(
                  "assets/nosotros.png",
                  fit: BoxFit.fill,
                ),
              )),
            ],
          )),
    );
  }
}
