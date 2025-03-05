import 'package:flutter/material.dart';
import '../wallpapers.dart';
import '../widgets/scrollable_wallpaper_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  var _deviceHeight;
  var _deviceWidth;
  var _selectedWallPaper;

  @override
  void initState() {
    _selectedWallPaper = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          _featuredWallPapers(),
          _gradientBoxWidget(),
          _topLayerWidget(),
        ],
      ),
    );
  }

  Widget _featuredWallPapers() {
    return SizedBox(
      height: _deviceHeight * 0.5,
      width: _deviceWidth,
      child: PageView(
        onPageChanged: (_index) {
          setState(() {
            _selectedWallPaper = _index;
          });
        },
        scrollDirection: Axis.horizontal,
        children:
            featuredWallPapers.map((_wallpaper) {
              return Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(_wallpaper.coverImage.url),
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }

  Widget _gradientBoxWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: _deviceHeight * 0.75,
        width: _deviceWidth,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromRGBO(35, 45, 60, 1.0), Colors.transparent],
            stops: [0.65, 1.0],
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
          ),
        ),
      ),
    );
  }

  Widget _topLayerWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: _deviceWidth * 0.05,
        vertical: _deviceWidth * 0.05,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          _topBarWidget(),
          SizedBox(height: _deviceHeight * 0.13),
          _featuredWallPapersInfoWidget(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: _deviceHeight * 0.001),
            child: ScrollableWallPaperWidget(
              _deviceHeight * 0.22,
              _deviceWidth,
              true,
              wallpapers,
            ),
          ),
          _featuredWallPaperBannerWidget(),
      Padding(
        padding: EdgeInsets.symmetric(vertical: _deviceHeight * 0.001),
        child: ScrollableWallPaperWidget(
          _deviceHeight * 0.21,
          _deviceWidth,
          false,
          wallpapers2,
        ),
      )
        ],
      ),
    );
  }

  Widget _topBarWidget() {
    return SizedBox(
      height: _deviceHeight * 0.13,
      width: _deviceWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(Icons.menu, color: Colors.white, size: 30),
          Row(
            children: <Widget>[
              Icon(Icons.search, color: Colors.white, size: 30),
              SizedBox(width: _deviceWidth * 0.03),
              Icon(Icons.notifications, color: Colors.white, size: 30),
            ],
          ),
        ],
      ),
    );
  }

  Widget _featuredWallPapersInfoWidget() {
    double _circleRadius = _deviceHeight * 0.0022;
    return SizedBox(
      height: _deviceHeight * 0.12,
      width: _deviceWidth,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            featuredWallPapers[_selectedWallPaper].title,
            maxLines: 2,
            style: TextStyle(
              color: Colors.white,
              fontSize: _deviceHeight * 0.04,
            ),
          ),
          SizedBox(height: _deviceHeight * 0.0001),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children:
                featuredWallPapers.map((_wallpaper) {
                  bool _isActive =
                      _wallpaper.title ==
                      featuredWallPapers[_selectedWallPaper].title;
                  return Container(
                    margin: EdgeInsets.only(right: _deviceWidth * 0.015),
                    height: _circleRadius * 2,
                    width: _circleRadius * 2,
                    decoration: BoxDecoration(
                      color: _isActive ? Colors.green : Colors.grey,
                      borderRadius: BorderRadius.circular(100),
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }

  Widget _featuredWallPaperBannerWidget() {
    return Container(
      height: _deviceHeight * 0.13,
      width: _deviceWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(featuredWallPapers[2].coverImage.url),
        ),
      ),
    );
  }
}
