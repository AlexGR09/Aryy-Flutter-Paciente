import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    //_controller = VideoPlayerController.asset('assets/video/video.mp4')
    _controller = VideoPlayerController.asset('assets/video/aryy-video.mp4')
      ..initialize().then((_) {
        _controller.setVolume(0.0);
        _controller.setLooping(true);
        _controller.play();
        // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return FittedBox(
      // Se agrega cover para cubrir la pantalla
      fit: BoxFit.cover,
      // Se centra el video (puedes cambiar por TopCenter, etc)
      alignment: Alignment.center,
      // al SizedBox se agregan las dimensiones del video (no de las dimensiones de la pantalla: constraints.maxWidth)
      child: SizedBox(
        width: _controller.value.size.width,
        height: _controller.value.size.height,
        // El video se pone dentro de un AspectRatio,
        child: AspectRatio(
          // _controller representa el video, aspectRatio es del video
          aspectRatio: _controller.value.aspectRatio,
          child: VideoPlayer(_controller),
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
