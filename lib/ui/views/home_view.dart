import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';
import 'package:video_player/video_player.dart';

class HomeView extends StatefulWidget {
  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    print("INIT");

    super.initState();
    initVideo();
  }

  Future<void> initVideo() async {
    _controller = VideoPlayerController.asset('assets/intro.mp4');
    // _controller = VideoPlayerController.networkUrl(Uri.parse('https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'));

    await _controller.initialize();
    print("END initialize");

    _controller.setVolume(0);
    _controller.play();
    _controller.setLooping(true);
    setState(() {});
    print("END PLAY");
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    print(_controller.value.isInitialized);
    print(_controller.value.isPlaying);
    return Container(
      width: size.width,
      height: size.height,
      margin: EdgeInsets.symmetric(
        horizontal: 0,
      ),
      color: Color(0xff101820),
      child: _controller.value.isInitialized
          ? Stack(
              children: [
                Positioned.fill(
                  child: LayoutBuilder(
                    builder: (BuildContext context, BoxConstraints constraints) {
                      print(_controller.value.size.width);
                      print(constraints.maxWidth);
                      print(constraints.maxHeight);
                      print(_controller.value.size.width);
                      return FittedBox(
                        fit: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? BoxFit.fill : BoxFit.fitHeight,
                        child: SizedBox(
                          width: _controller.value.size.width,
                          height: _controller.value.size.height,
                          child: VideoPlayer(_controller),
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    width: size.width,
                    child: Padding(
                      padding: EdgeInsets.all(ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 100.0 : 50),
                      child: Column(
                        crossAxisAlignment:
                            ResponsiveBreakpoints.of(context).largerThan(TABLET) ? CrossAxisAlignment.start : CrossAxisAlignment.center,
                        children: [
                          Text(
                            "LLEGÁ MÁS LEJOS CON MOBI",
                            style: TextStyle(
                                fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 45 : 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "Reservá una moped eléctrica y poné a rodar tus sueños.",
                            textAlign: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? TextAlign.start : TextAlign.center,
                            style: TextStyle(
                              fontSize: ResponsiveBreakpoints.of(context).largerThan(TABLET) ? 24 : 16,
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 10),
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
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          : Container(),
    );
  }
}
