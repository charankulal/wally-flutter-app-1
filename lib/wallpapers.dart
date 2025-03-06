class WallPaperImage {
  String url;
  String title;

  WallPaperImage(this.url, this.title);
}

class WallPaper {
  String title;
  WallPaperImage coverImage;
  List<WallPaperImage> images;

  WallPaper(this.title, this.coverImage,
      {this.images = const []});
}

List<WallPaper> wallpapers = [
  WallPaper(
    "Terminator",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/images_store/i1.png",
        ""),
  ),
  WallPaper(
    "Lion king",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/images_store/i2.png",
        ""),
  ),
  WallPaper(
    "Mars Attack",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/images_store/i3.jpeg",
        ""),
  ),
  WallPaper(
    "Jason goes to hell",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/images_store/i4.jpeg",
        ""),

  ),
];

List<WallPaper> wallpapers2 = [
  WallPaper(
    "1000 Corpses",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/images_store/i5.jpeg",
        ""),
  ),
  WallPaper(
    "Silent Hill",
    WallPaperImage("https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/images_store/i6.jpeg", ""),
  ),
  WallPaper(
    "The trueman show",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/images_store/i7.jpeg",
        ""),
  ),
  WallPaper(
    "Elephant Man",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/images_store/i8.jpeg",
        ""),
  ),
];

List<WallPaper> featuredWallPapers = [
  WallPaper(
    "Full metal Jacket",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/images_store/i9.jpeg",
        ""),
  ),
  WallPaper(
    "Mickey 17",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/images_store/i10.jpeg",
        ""),
  ),
  WallPaper(
    "Suspiria",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/images_store/i11.jpeg", ""),
  )
];