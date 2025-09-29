import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerScreen extends StatefulWidget {
  final String url;

  const VideoPlayerScreen({required this.url, Key? key}) : super(key: key);

  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  bool _isPlaying = false;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network(widget.url)
      ..initialize().then((_) {
        setState(() {});
        _controller.play();
        _isPlaying = true;
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _togglePlayPause() {
    setState(() {
      if (_controller.value.isPlaying) {
        _controller.pause();
        _isPlaying = false;
      } else {
        _controller.play();
        _isPlaying = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.of(context).orientation == Orientation.portrait
          ? AppBar(title: Text("Reproduzir Vídeo"))
          : null,
      body: Center(
        child: _controller.value.isInitialized
            ? OrientationBuilder(
          builder: (context, orientation) {
            if (orientation == Orientation.landscape) {
              // full screen em landscape
              return SizedBox.expand(
                child: FittedBox(
                  fit: BoxFit.cover,
                  child: SizedBox(
                    width: _controller.value.size.width,
                    height: _controller.value.size.height,
                    child: VideoPlayer(_controller),
                  ),
                ),
              );
            } else {
              // mantém o AspectRatio normal em portrait
              return AspectRatio(
                aspectRatio: _controller.value.aspectRatio,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    VideoPlayer(_controller),
                    _ControlsOverlay(
                      controller: _controller,
                      isPlaying: _isPlaying,
                      onPlayPause: _togglePlayPause,
                    ),
                    VideoProgressIndicator(_controller, allowScrubbing: true),
                  ],
                ),
              );
            }
          },
        )
            : const CircularProgressIndicator(),
      ),
    );
  }
}

class _ControlsOverlay extends StatelessWidget {
  final VideoPlayerController controller;
  final bool isPlaying;
  final VoidCallback onPlayPause;

  const _ControlsOverlay({
    required this.controller,
    required this.isPlaying,
    required this.onPlayPause,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPlayPause,
      child: Container(
        color: Colors.transparent,
        child: Center(
          //child: Icon(
            //isPlaying ? Icons.pause_circle : Icons.play_circle,
            //color: Colors.white,
            //size: 64,
          //),
        ),
      ),
    );
  }
}
