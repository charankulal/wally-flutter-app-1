import 'package:flutter/material.dart';
import 'package:wally/wallpapers.dart';

class ScrollableWallPaperWidget extends StatelessWidget {
  final double _height;
  final double _width;
  final bool _isShowTitle;
  final List<WallPaper> _wallPaperData;

  ScrollableWallPaperWidget(
    this._height,
    this._width,
    this._isShowTitle,
    this._wallPaperData,
  );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _height,
      width: _width,
      child: ListView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children:
            _wallPaperData.map((_wallPaper) {
              return Container(
                height: _height,
                width: _width*0.3,
                padding: EdgeInsets.only(right: _width * 0.03),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: _height * 0.70,
                      width: _width * 0.45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(_wallPaper.coverImage.url),
                        ),
                      ),
                    ),
                    _isShowTitle?Text(
                      _wallPaper.title,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: _height * 0.08,
                      ),
                    ):Container(),
                  ],
                ),
              );
            }).toList(),
      ),
    );
  }
}
