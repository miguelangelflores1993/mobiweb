import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:responsive_framework/responsive_value.dart';

class LocationView extends StatefulWidget {
  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  List<Step> _steps = getSteps();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
        width: size.width,
        margin: EdgeInsets.symmetric(horizontal: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100.0 : 20, vertical: 30),
        child: Column(
            children: _steps.map<Widget>(
          (item) {
            return Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Card(
                color: Color(0xff101820),
                child: ExpansionTile(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(24))),
                  iconColor: Colors.white,
                  textColor: Colors.white,
                  collapsedTextColor: Colors.white,
                  childrenPadding: EdgeInsets.all(20),
                  tilePadding: EdgeInsets.all(20),
                  collapsedIconColor: Colors.white,
                  title: HoverBuilder(
                    builder: (isHovered) {
                      if (!isHovered) {
                        return Text(
                          item.title,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.w600,
                          ),
                        );
                      }
                      return Row(
                        children: [
                          GradientText(
                            item.title,
                            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                            gradient: LinearGradient(colors: [Color(0xffE4002B), Color(0xff7200A6)]),
                          ),
                        ],
                      );
                    },
                  ),
                  maintainState: true,
                  expandedCrossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          item.body,
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ).toList()
            // child: SingleChildScrollView(
            //   child: ExpansionPanelList(
            //     dividerColor: Colors.transparent, // Elimina el divisor
            //     elevation: 1, // Controla la elevación de los paneles
            //     expandedHeaderPadding: EdgeInsets.zero,
            //     expansionCallback: (int index, bool isExpanded) {
            //       setState(() {
            //         _steps[index].isExpanded = isExpanded;
            //       });
            //     },
            //     children: _steps.map<ExpansionPanel>((Step step) {
            //       return ExpansionPanel(
            //         backgroundColor: Colors.red,
            //         headerBuilder: (BuildContext context, bool isExpanded) {
            //           return ListTile(
            //             title: Text("${step.title} "),
            //           );
            //         },
            //         body: ListTile(
            //           title: Text(step.body),
            //         ),
            //         isExpanded: step.isExpanded,
            //       );
            //     }).toList(),
            //   ),
            ));
  }
}

List<Step> getSteps() {
  return [
    Step('¿Como suscribirme?', 'Install Flutter development tools according to the official documentation.'),
    Step('¿Cómo se utiliza mobi?', 'Open your terminal, run `flutter create <project_name>` to create a new project.'),
    Step('Planes', 'Change your terminal directory to the project directory, enter `flutter run`.'),
    Step('Instrucciones y formas de pago', 'Change your terminal directory to the project directory, enter `flutter run`.'),
  ];
}

class Step {
  Step(this.title, this.body, [this.isExpanded = false]);
  String title;
  String body;
  bool isExpanded;
}

class HoverBuilder extends StatefulWidget {
  const HoverBuilder({
    required this.builder,
    Key? key,
  }) : super(key: key);

  final Widget Function(bool isHovered) builder;

  @override
  _HoverBuilderState createState() => _HoverBuilderState();
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) {
        return gradient.createShader(
          Rect.fromLTWH(0, 0, bounds.width, bounds.height),
        );
      },
      child: Text(text, style: style),
    );
  }
}

class _HoverBuilderState extends State<HoverBuilder> {
  bool _isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (PointerEnterEvent event) => _onHoverChanged(enabled: true),
      onExit: (PointerExitEvent event) => _onHoverChanged(enabled: false),
      child: widget.builder(_isHovered),
    );
  }

  void _onHoverChanged({required bool enabled}) {
    setState(() {
      _isHovered = enabled;
    });
  }
}
