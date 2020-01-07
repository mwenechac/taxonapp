import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PopularVideos extends StatefulWidget {
  @override
  _PopularVideosState createState() => _PopularVideosState();
}

class _PopularVideosState extends State<PopularVideos> {
  @override
  Widget build(BuildContext context) {
    _buildPopularVids() {
      return Container(
          margin:
              EdgeInsets.only(bottom: 32.0, top: 16.0, right: 0, left: 16.0),
          width: 300.0,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    offset: Offset(5.0, 5.0),
                    blurRadius: 25.0)
              ]));
    }

    _buildAllVideos() {}

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Popular',
            style: TextStyle(
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w600,
                fontSize: 20),
          ),
        ),
        Container(
          height: 250.0,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (BuildContext context, int index) {
              return _buildPopularVids();
            },
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Watch',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              _buildAllVideos(),
            ],
          ),
        ),
      ],
    );
  }
}
