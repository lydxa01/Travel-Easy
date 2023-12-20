class UntukWidget {
  final String gmbr;
  final String nma;
  final String category;
  UntukWidget({
    required this.gmbr,
    required this.nma,
    required this.category,
  });
}

List<UntukWidget> data = [
  UntukWidget(
    nma: "Gunung",
    gmbr: "assets/mountain.png",
    category: "gunung",
  ),
  UntukWidget(
    nma: "Pantai",
    gmbr: "assets/beach.png",
    category: "pantai", // Add the category field for Pantai
  ),
  UntukWidget(
    nma: "Sejarah",
    gmbr: "assets/museum.png",
    category: "sejarah", // Add the category field for Sejarah
  ),
  UntukWidget(
    nma: "Danau",
    gmbr: "assets/danau.png",
    category: "danau", // Add the category field for Danau
  ),
  UntukWidget(
    nma: "Bukit",
    gmbr: "assets/hill.png",
    category: "bukit", // Add the category field for Bukit
  ),
  UntukWidget(
    nma: "Curug",
    gmbr: "assets/waterfall.png",
    category: "curug", // Add the category field for Curug
  ),
  UntukWidget(
    nma: "Goa",
    gmbr: "assets/cave.png",
    category: "goa", // Add the category field for Goa
  ),
  UntukWidget(
    nma: "Umbul",
    gmbr: "assets/umbul.png",
    category: "umbul", // Add the category field for Umbul
  ),
];
