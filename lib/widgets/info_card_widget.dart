import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:test_1/pages/detail_page.dart';

class InfoCardWidget extends StatefulWidget {
  const InfoCardWidget({
    super.key,
    required this.name,
    required this.image,
    required this.audio,
    required this.bigImage,
    required this.infoText,
  });

  final String name;
  final String image;
  final String audio;
  final String bigImage;
  final String infoText;

  @override
  _InfoCardWidgetState createState() => _InfoCardWidgetState();
}

class _InfoCardWidgetState extends State<InfoCardWidget> {
  final AudioPlayer audioPlayer = AudioPlayer();
  bool isPlaying = false;

  @override
  void initState() {
    super.initState();
    audioPlayer.onPlayerComplete.listen((event) {
      setState(() {
        isPlaying = false;
      });
    });
  }

  @override
  void dispose() {
    audioPlayer.dispose();
    super.dispose();
  }

  void togglePlayPause() async {
    if (isPlaying) {
      await audioPlayer.pause();
    } else {
      await audioPlayer.play(AssetSource('audio/${widget.audio}.mp3'));
    }
    setState(() {
      isPlaying = !isPlaying;
    });
  }

  void _navigateToDetailPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => DetailPage(
                name: widget.name,
                bigImage: widget.bigImage,
                infoText: widget.infoText,
              )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _navigateToDetailPage(context),
      child: Container(
        width: 225,
        height: 225,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32, right: 32, left: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      color: Color.fromARGB(255, 31, 73, 73),
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Image.asset(
                    'lib/assets/images/${widget.image}.jpg',
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 150,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 12, right: 12),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 246, 121, 19),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: IconButton(
                    color: const Color.fromARGB(255, 31, 73, 73),
                    icon: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
                    onPressed: togglePlayPause,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
