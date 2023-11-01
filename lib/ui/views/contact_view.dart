import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class ContactView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: size.height - 90,
      margin: EdgeInsets.symmetric(
        horizontal: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100.0 : 20,
      ).copyWith(top: 30),
      child: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Color(0xff101820),
                    ),
                    child: Column(children: [
                      Text(
                        "MOPED JOB",
                        style: TextStyle(
                            fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 45 : 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "La opción más económica si necesitás un vehículo y querés trabajar en una plataforma de envíos.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 18 : 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
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
                            child: Text('Reservar', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w400)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Reserva por solo 30 USD",
                        style: TextStyle(
                            fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 28 : 28,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Paga luego 99 USD  al mes.",
                        style: TextStyle(
                            fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 18 : 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset("assets/MOTO2.png"),
                      Spacer(),
                      Text(
                        "¿Qué incluye?",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 18 : 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ]),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(40),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(24)),
                      color: Color(0xff101820),
                    ),
                    child: Column(children: [
                      Text(
                        "MOPED URBAN",
                        style: TextStyle(
                            fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 45 : 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "La mejor alternativa para transportarte al trabajo, la universidad o cualquier otro lugar en tu día a día.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 18 : 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
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
                            child: Text('Reservar', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w400)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Reserva por solo 30 USD",
                        style: TextStyle(
                            fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 28 : 28,
                            color: Colors.white,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Paga luego 125 USD  al mes.",
                        style: TextStyle(
                            fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 18 : 18,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Image.asset("assets/MOTO1.png"),
                      Spacer(),
                      Text(
                        "¿Qué incluye?",
                        style: TextStyle(
                          fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 18 : 18,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ]),
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
