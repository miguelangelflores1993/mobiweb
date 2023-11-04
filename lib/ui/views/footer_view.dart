import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

class FooterView extends StatefulWidget {
  @override
  State<FooterView> createState() => _FooterViewState();
}

class _FooterViewState extends State<FooterView> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      margin: EdgeInsets.symmetric(horizontal: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100.0 : 20, vertical: 30),
      padding: EdgeInsets.symmetric(horizontal: 100, vertical: 30),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(24)),
        color: Color(0xff101820),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset('assets/logo.png'),
              Row(
                children: [
                  Image.asset('assets/linkeding.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset('assets/instagram.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset('assets/facebook.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset('assets/cb.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset('assets/tiktok.png'),
                  SizedBox(
                    width: 30,
                  ),
                  Image.asset('assets/x.png'),
                ],
              )
            ],
          ),
          SizedBox(height: 30),
          Divider(
            color: Colors.grey.shade100,
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Sobre Mobi', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600)),
                  SizedBox(height: 30),
                  Text('Moped CK1', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
                  Text('Suscripciones', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
                  Text('Beneficios', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
                  Text('Desarrollo sostenible', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
                  Text('Blog', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Servicio al cliente online', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600)),
                  SizedBox(height: 30),
                  Text('Políticas de privacidad', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
                  Text('Términos y condiciones', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
                  Text('FAQ', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
                  Text('Formulario', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Contacto', style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w600)),
                  SizedBox(height: 30),
                  Text('+591 77777777', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400)),
                  SizedBox(height: 30),
                  Text('support@mobi.lat', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400)),
                ],
              )
            ],
          ),
          SizedBox(
            height: 100,
          ),
          Text('© 2023 The Moby Company LLC', style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
