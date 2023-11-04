import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BenefitsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height - 90,
      margin: EdgeInsets.symmetric(
        horizontal: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100.0 : 20,
      ),
      child: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                      child: Column(
                    children: [
                      Text(
                        "Seguro",
                        style: TextStyle(
                            fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 35 : 20,
                            color: Colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                      // ClipRRect(
                      //   borderRadius: BorderRadius.all(Radius.circular(24)),
                      //   child: Image.asset(
                      //     ResponsiveBreakpoints.of(context).largerThan(TABLET)
                      //         ? "assets/digital.png"
                      //         : "assets/sostenibilidad.png",
                      //     width: size.width,
                      //     fit: BoxFit.fitWidth,
                      //   ),
                      // ),
                      ClipPath(
                        clipper: TriangleClipper(),
                        child: Image.asset(
                            width: size.width,
                            fit: BoxFit.fitWidth,
                            'assets/sostenibilidad.png'), // Reemplaza 'tu_imagen.png' con la ruta de tu imagen
                      )
                    ],
                  ))
                ],
              ),
              Row(
                children: [],
              )
            ],
          )),
          Container(
            width: size.width,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(24)),
              color: Color(0xff101820),
            ),
            child: Center(
              child: Text(
                "PREGUNTAS FRECUENTES",
                style: TextStyle(
                    fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 35 : 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TriangleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width / 2, 0) // Punto de inicio en la esquina superior izquierda
      ..lineTo(0, size.height) // Línea diagonal hacia la esquina inferior izquierda
      ..lineTo(size.width / 2, size.height) // Línea vertical hacia la esquina inferior derecha
      ..close(); // Cierra el triángulo
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
