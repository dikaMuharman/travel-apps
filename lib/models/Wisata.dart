class Wisata {
  final String title;
  final double rating;
  final String description;
  final String imgPath;

  Wisata(this.title, this.rating, this.description, this.imgPath);
}

List<Wisata> daftarWisata = [
  Wisata(
      'Madrid',
      4.5,
      'Madrid (/məˈdrɪd/, Spanish: [maˈðɾið])[n. 1] is the capital and most-populous city of Spain. The city has almost 3.4 million[8] inhabitants and a metropolitan area population of approximately 6.7 million. It is the second-largest city in the European Union (EU), surpassed only by Berlin in its administrative limits, and its monocentric metropolitan area is the second-largest in the EU, surpassed only by Paris. The municipality covers 604.3 km2 geographical area.',
      'assets/images/madrid.jpg'),
  Wisata(
      'Germany',
      4.2,
      "Germany (German: Deutschland, pronounced [ˈdɔʏtʃlant] (About this soundlisten)), officially the Federal Republic of Germany, is a country in Central Europe. It is the second-most populous country in Europe after Russia, and the most populous member state of the European Union. Germany is situated between the Baltic and North seas to the north, and the Alps to the south; covering an area of 357,022 square kilometres (137,847 sq mi), with a population of over 83 million within its 16 constituent states. It borders Denmark to the north, Poland and the Czech Republic to the east, Austria and Switzerland to the south, and France, Luxembourg, Belgium, and the Netherlands to the west. The nation's capital and largest city is Berlin, and its financial centre is Frankfurt; the largest urban area is the Ruhr.",
      'assets/images/germany.jpg'),
  Wisata(
      'Norway',
      4.8,
      "Norway, officially the Kingdom of Norway, is a Nordic country in Northern Europe whose mainland territory comprises the western and northernmost portion of the Scandinavian Peninsula. The remote Arctic island of Jan Mayen and the archipelago of Svalbard also form part of Norway. Bouvet Island, located in the Subantarctic, is a dependency of Norway; it also lays claims to the Antarctic territories of Peter I Island and Queen Maud Land.",
      'assets/images/norway.jpg'),
  Wisata(
      "Indonesia",
      4.9,
      "Indonesia (/ˌɪndəˈniːʒə/ (About this soundlisten) IN-də-NEE-zhə), officially the Republic of Indonesia (Indonesian: Republik Indonesia [reˈpublik ɪndoˈnesia] (About this soundlisten)), is a country in Southeast Asia and Oceania between the Indian and Pacific oceans. It consists of over seventeen thousand islands, including Sumatra, Java, Sulawesi, and parts of Borneo and New Guinea. Indonesia is the world's largest island country and the 14th-largest country by area, at 1,904,569 square kilometres (735,358 square miles). With more than 270 million people, Indonesia is the world's fourth-most populous country and the most populous Muslim-majority country. Java, the world's most populous island, is home to more than half of the country's population.",
      'assets/images/indonesia.jpg')
];
