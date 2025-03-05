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
    "Horizon Zero Dawn",
    WallPaperImage(
        "https://www.wallpaperflare.com/static/734/272/885/horizon-zero-dawn-playstation-4-logo-aloy-horizon-zero-dawn-wallpaper.jpg",
        ""),
    "",
    "Guerrilla Games",
  ),
  WallPaper(
    "Metro Exodus",
    WallPaperImage(
        "https://assets1.ignimgs.com/2018/12/14/metro-exodus---button-1544750418985.jpg",
        ""),
    "",
    "4A Games",
  ),
  WallPaper(
    "Tom Clancy's The Division 2",
    WallPaperImage(
        "https://cdn.division.zone/uploads/2019/03/tc-the-division-2-preload-start-times-sizes-header.jpg",
        ""),
    "",
    "Massive Entertainment",
  ),
  WallPaper(
    "Resident Evil 2",
    WallPaperImage(
        "https://media.playstation.com/is/image/SCEA/resident-evil-2-box-art-01-ps4-us-12dec18?\$native_nt\$",
        ""),
    "",
    "Capcom",
  ),
];

List<WallPaper> wallpapers2 = [
  WallPaper(
    "Grand Theft Auto V",
    WallPaperImage(
        "https://gpstatic.com/acache/26/25/1/uk/packshot-7136bdab871d6b2c8f07ccc9ad33b4d0.jpg",
        ""),
    "",
    "Rockstar Games",
  ),
  WallPaper(
    "The Last of Us Part II",
    WallPaperImage("https://wallpapercg.com/media/ts_orig/18910.webp", ""),
    "",
    "Naughty Dog",
  ),
  WallPaper(
    "Sekiro: Shadows Die Twice",
    WallPaperImage(
        "https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/773966be-6e02-41dd-8ee2-b6c03e90b854/dcef71y-36be97a6-1d92-4e24-97ac-89a5fe7f2266.jpg/v1/fit/w_828,h_466,q_70,strp/sekiro__shadows_die_twice_wallpaper_by_dralucard_dcef71y-414w-2x.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9MTA4MCIsInBhdGgiOiJcL2ZcLzc3Mzk2NmJlLTZlMDItNDFkZC04ZWUyLWI2YzAzZTkwYjg1NFwvZGNlZjcxeS0zNmJlOTdhNi0xZDkyLTRlMjQtOTdhYy04OWE1ZmU3ZjIyNjYuanBnIiwid2lkdGgiOiI8PTE5MjAifV1dLCJhdWQiOlsidXJuOnNlcnZpY2U6aW1hZ2Uub3BlcmF0aW9ucyJdfQ.-8oMlvYLDc61N8K0wi9YjoTvLNhUIaXckVeC1z8flTA",
        ""),
    "",
    "From Software",
  ),
  WallPaper(
    "Just Cause 4",
    WallPaperImage(
        "https://s3.gaming-cdn.com/images/products/2666/orig/just-cause-4-cover.jpg",
        ""),
    "",
    "Avalanche Studios",
  ),
];

List<WallPaper> featuredWallPapers = [
  WallPaper(
    "Total War: Three Kingdoms",
    WallPaperImage(
        "https://content.totalwar.com/total-war/com.totalwar.www2019/uploads/2019/03/08145252/2.jpg",
        ""),
    "",
    "Feral Interactive",
  ),
  WallPaper(
    "Call of Duty: Modern Warfare",
    WallPaperImage(
        "https://images.hdqwalls.com/download/call-of-duty-modern-warfare-2019-4k-cb-1920x1080.jpg",
        ""),
    "",
    "Infinity Ward",
  ),
  WallPaper(
    "Mortal Kombat 11",
    WallPaperImage(
        "https://static.trueachievements.com/customimages/093902.jpg", ""),
    "",
    "NetherRealm Studios",
  )
];