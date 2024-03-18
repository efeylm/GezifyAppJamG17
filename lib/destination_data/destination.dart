class Destination {
  final String name;
  final String point;
  final String location;
  final String awayFrom;
  final String imagePath;
  final String info;

  Destination(
      {required this.name,
      required this.point,
      required this.location,
      required this.awayFrom,
      required this.info,
      required this.imagePath});
}

final List<Destination> destinationlist = [
  Destination(
      name: "Nemrut Dağı🗻",
      point: "4.7",
      location: "Adıyaman, Kahta",
      awayFrom: "45",
      info:
          "   Nemrut Dağı, Türkiye'nin güneydoğusunda, Adıyaman ilinin Kahta ilçesi sınırları içerisinde yer alan bir arkeolojik ve turistik alanı içeren dağdır. Kommagene Krallığı döneminde (MÖ 1. yüzyıl), Kral I. Antiochos tarafından yaptırılan devasa heykeller ve tapınaklar kompleksiyle ünlüdür. UNESCO Dünya Mirası Listesi'nde yer alan bu bölge, antik döneme ait önemli bir tarihi mirası temsil etmektedir. Doğal güzelliği ve tarihi zenginlikleriyle Nemrut Dağı, yıl boyunca birçok turistin ilgisini çeken benzersiz bir destinasyondur.",
      imagePath: "images/nemrut.jpg"),
  Destination(
      name: "Ulu Cami🕌",
      point: "2.7",
      location: "Bursa, Osmangazi",
      awayFrom: "60",
      info: "Bursa Ulu Cami, Türkiye'nin en eski ve en büyük camilerinden biridir ve Osmanlı döneminin önemli bir mimari yapıtı olarak kabul edilir. İlk olarak 1399 yılında inşa edilmeye başlanan bu muhteşem yapı, Osmanlı İmparatorluğu'nun kurucusu Osman Bey'in oğlu Orhan Bey döneminde tamamlanmıştır. Ulu Cami, o dönemin mimari tarzını yansıtan görkemli kubbesi, devasa avlusu ve etkileyici minareleriyle dikkat çeker. Bursa'nın tarihî dokusuna ışık tutan bu anıtsal yapı, ziyaretçilerini geçmişe yolculuğa çıkarırken aynı zamanda ibadet mekânı olarak da hizmet vermektedir.",
      imagePath: "images/ulucami.jpg"),
  Destination(
      name: "Odunpazarı Evleri🏠",
      point: "3.7",
      location: "Sakarya, Odunpazarı",
      awayFrom: "35",
      info: "Odunpazarı evleri, Türkiye'nin Sakarya ilinde bulunan tarihi ve kültürel bir mirası temsil eder. Bu geleneksel Türk evleri, ahşap mimari tarzıyla dikkat çeker ve genellikle Osmanlı dönemine ait izler taşır. Renkli boyalı ahşap cumbaları ve detaylı süslemeleriyle ünlü olan bu evler, Osmanlı mimarisinin karakteristik özelliklerini yansıtır. Odunpazarı evleri, ziyaretçilere Sakarya'nın tarihini ve kültürünü keşfetme fırsatı sunar ve bölgenin benzersiz atmosferini yaşamak isteyenler için ideal bir durak noktasıdır.",
      imagePath: "images/odunpazarı.jpg"),
  Destination(
      name: "Peribacaları🏠",
      point: "3.7",
      location: "Nevşehir, Ürgüp",
      awayFrom: "35",
      info: 'Peribacaları, Türkiyenin Kapadokya bölgesinde bulunan eşsiz bir doğa harikasıdır. Jeolojik süreçlerin etkisiyle oluşmuş olan peribacaları, volkanik kayaçların rüzgar ve su erozyonuyla şekillenmesi sonucu ortaya çıkmıştır. Bu benzersiz oluşumlar, yüzyıllar boyunca insanların ilgisini çekmiş ve Kapadokyayı dünya çapında ünlü bir turistik destinasyon haline getirmiştir. Peribacalarının etkileyici manzarası ve tarihi dokusu, ziyaretçilere unutulmaz bir deneyim sunmaktadır.',
      imagePath: "images/peribacalari.jpg"),
  Destination(
      name: "Efes Antik Kenti🗿",
      point: "3.7",
      location: "İzmir, Şirince",
      awayFrom: "35",
      info: "Efes Antik Kenti, tarih boyunca önemli bir merkez olmuş ve günümüze kadar ulaşan görkemli kalıntılarıyla Anadolu'nun en önemli arkeolojik alanlarından biridir. Antik çağlarda İyonya'nın en büyük şehri olan Efes, günümüzde Türkiye'nin batı kıyısında, İzmir'in güneyinde bulunmaktadır. M.Ö. 6. yüzyılda kurulan bu antik kent, Helenistik dönemden Roma İmparatorluğu'na kadar uzanan zengin bir tarihe sahiptir.",
      imagePath: "images/efes.jpg"),
];

final List<Destination> wishList =[];
