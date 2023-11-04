import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class BenefitsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height - 90,
      margin: EdgeInsets.symmetric(
          horizontal: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100.0 : 20, vertical: 50),
      child: Column(
        children: [
          Expanded(
              child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    ItemBenefits(
                      title: "Seguro",
                      img: "assets/seguro.png",
                      marginRight: 30,
                    ),
                    ItemBenefits(
                      title: "Mantenimiento",
                      marginRight: 30,
                      img: "assets/mantenimiento.png",
                    ),
                    ItemBenefits(
                      title: "Recarga",
                      marginRight: 30,
                      img: "assets/batery.png",
                    ),
                    ItemBenefits(
                      title: "Descuento",
                      img: "assets/discount.png",
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Expanded(
                child: Row(
                  children: [
                    ItemBenefits(
                      title: "Marketplace Job",
                      marginRight: 30,
                      img: "assets/moped_delivery.png",
                    ),
                    ItemBenefits(
                      title: "Reposición",
                      marginRight: 30,
                      img: "assets/reemplazo.png",
                    ),
                    ItemBenefits(
                      title: "Asistencia",
                      marginRight: 30,
                      img: "assets/support.png",
                    ),
                    ItemBenefits(
                      title: "Merchandising",
                      img: "assets/component.png",
                    ),
                  ],
                ),
              ),
            ],
          )),
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

class ItemBenefits extends StatelessWidget {
  final String title;
  final String img;
  final double? marginRight;
  const ItemBenefits({
    super.key,
    required this.title,
    required this.img,
    this.marginRight,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(0).copyWith(right: marginRight),
        padding: EdgeInsets.symmetric(horizontal: 0),
        decoration: BoxDecoration(
          color: Color(0xff101820),
          borderRadius: BorderRadius.all(Radius.circular(24)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 25 : 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                img,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
