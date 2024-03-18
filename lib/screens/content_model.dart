class UnboardingContent {
  String image;
  String title;
  String description;

  UnboardingContent({required this.image, required this.title, required this.description});
}

List<UnboardingContent> contents = [
  UnboardingContent(
    image: "images/nemrut.jpg",
    title: "Hayat kısa ve dünya geniş",
    description: "Gezilecek binlerce yerimiz, yaşanacak sınırlı anılarımız var...",
  ),
  UnboardingContent(
    image: "images/ulucami.jpg",
    title: "Dünya büyük, keşfetmekten korkma!",
    description: "Olduğun yerde durma, keşfetmenin tadını çıkar",
  ),
  UnboardingContent(
    image: "images/odunpazarı.jpg",
    title: "İnsanlar seyahate çıkmaz, seyahatler insanları çağırır",
    description: "Sen de Gezify ile seyahatlerini planla, popüler rotaları keşfet !",
  ),

];