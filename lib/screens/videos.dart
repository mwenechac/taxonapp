import 'package:flutter/material.dart';
import 'package:taxonapp/popular_videos.dart';

class VideoScreen extends StatelessWidget {
  static const String routeName = '/taxeducation';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Learn'),
      ),
      body: PopularVideos(),
    );
  }
}
