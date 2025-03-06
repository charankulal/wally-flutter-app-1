class WallPaperImage {
  String url;
  String title;

  WallPaperImage(this.url, this.title);
}

class WallPaper {
  String title;
  WallPaperImage coverImage;
  List<WallPaperImage> images;
  String description;
  String studio;

  WallPaper(this.title, this.coverImage, this.description, this.studio,
      {this.images = const []});
}

List<WallPaper> wallpapers = [
  WallPaper(
    "Dog Man",
    WallPaperImage(
        "https://github.com/charankulal/wally-flutter-app-1/blob/master/10954718.jpg",
        ""),
    "",
    "Fox Studios",
  ),
  WallPaper(
    "Last Breath",
    WallPaperImage(
        "https://github.com/charankulal/wally-flutter-app-1/blob/master/14403504.jpg",
        ""),
    "",
    "Columbia Pictures",
  ),
  WallPaper(
    "Captain America",
    WallPaperImage(
        "https://github.com/charankulal/wally-flutter-app-1/blob/master/14513804.jpg",
        ""),
    "",
    "Marvel Studios",
  ),
  WallPaper(
    "The Monkey",
    WallPaperImage(
        "https://github.com/charankulal/wally-flutter-app-1/blob/master/27714946.jpg",
        ""),
    "",
    "DC",
  ),
];

List<WallPaper> wallpapers2 = [
  WallPaper(
    "Last Dream",
    WallPaperImage(
        "https://github.com/charankulal/wally-flutter-app-1/blob/master/4819866.jpg",
        ""),
    "",
    "Disney Studios",
  ),
  WallPaper(
    "Make it Real",
    WallPaperImage("https://github.com/charankulal/wally-flutter-app-1/blob/master/4992098.jpg", ""),
    "",
    "Guitar shop",
  ),
  WallPaper(
    "Paddington in Peru",
    WallPaperImage(
        "https://github.com/charankulal/wally-flutter-app-1/blob/master/5822536.jpg",
        ""),
    "",
    "Marvel Studios",
  ),
  WallPaper(
    "The Boy",
    WallPaperImage(
        "https://github.com/charankulal/wally-flutter-app-1/blob/master/8852084.jpg",
        ""),
    "",
    "Avalanche Studios",
  ),
];

List<WallPaper> featuredWallPapers = [
  WallPaper(
    "Mickey 17",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/fw1.jpg",
        ""),
    "",
    "Feral Studios",
  ),
  WallPaper(
    "Black Bag",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/fw1.jpg",
        ""),
    "",
    "Fox Studios",
  ),
  WallPaper(
    "Pulse",
    WallPaperImage(
        "https://raw.githubusercontent.com/charankulal/wally-flutter-app-1/refs/heads/master/fw3.jpg", ""),
    "",
    "NetherRealm Studios",
  )
];