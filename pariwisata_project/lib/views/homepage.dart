import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pariwisata_project/models/modeltopdestinations.dart';
import 'package:pariwisata_project/views/detailpagedestination.dart';

String image1 = "assets/images/forest.png";
String image2 = "assets/images/camp.png";
String image3 = "assets/images/hiking.png";
String image4 = "assets/images/mountain.png";
String image5 = "assets/images/beach.png";
List<String> image = [image1, image2, image3, image4, image5];

List imagetopDestinations = [
  "https://picsum.photos/id/10/200/300",
  "https://picsum.photos/id/11/200/300",
  "https://picsum.photos/id/12/200/300",
  "https://picsum.photos/id/13/200/300",
  "https://picsum.photos/id/14/200/300",
  "https://picsum.photos/id/15/200/300",
  "https://picsum.photos/id/16/200/300",
  "https://picsum.photos/id/17/200/300",
];

List placenametopDestinations = [
  "Danau Laut Tawar",
  "Pantan Terong",
  "Burni Telong",
  "Pantai Menye",
  "Dermaga Lukup Panalan",
  "Gua Puteri Pukes",
  "Air Terjun Mangaya",
  "Bur Telege",
];

List descriptions = [
  'Danau Laut Tawar adalah sebuah danau dan kawasan wisata yang terletak di Dataran Tinggi Gayo, Kabupaten Aceh Tengah, Aceh. Disisi barat danau ini terdapat sebuah kota kabupaten yaitu kota Takengon, yang juga merupakan ibu kota Kabupaten Aceh Tengah. Suku Gayo menyebut danau ini dengan sebutan Danau Lut Tawar.',
  'Pantan Terong adalah sebuah bukit yang terletak di puncak bukit Dataran Tinggi Gayo Takengon Kecamatan Bebesen Kabupaten Aceh Tengah. Bukit ini berada pada ketinggian lebih dari 1.350 meter di atas permukaan laut.',
  'Gunung Burni Telong adalah salah satu gunung yang ada di Aceh. Ketinggian puncaknya adalah 2624 meter di atas permukaan laut. Pendakian ke gunung ini dimulai dari Kabupaten Bener Meriah. Nama lain gunung ini adalah Gunung Tutong, Gunung Boer Moetelong, atau Gunung Telong.',
  'Pantai Menye merupakan salah satu pantai paling populer di dataran tinggi Gayo. Oleh karena itu, tidak lengkap ke Aceh Tengah, di destinasi instagramable ini.'
      'Dermaga Lukup Panalam merupakan sebuah wisata yang menyajikan keindahan. Dari lokasi ini kamu dapat langsung menikmati pemandangan ikon wisata tankengon yakni Danau Lut dan bisa mengelilingi danau tersebut dengan kapal. Keindahan danau dan pegunungan membuat lokasi ini terlihat sangat cantik dan berbeda dengan dermaga yang biasanya kita lihat.'
      'Gua putri pukes berada di pinggran jalan menghadap ke danau laut tawar, untuk memasuki ke dalam goa naik keatas melalui bibir pintu goa, kemudian masuk kedalam turun melalui tangga yang sudah disemen sekitar 6 meter, goa sudah terang karena sudah disedia fasilitas penerangan listrik.'
      'Air Terjun Meganya merupakan air terjun yang terletak dekat dengan Danau Laut Tawar, Aceh Tengah. Air terjun ini tersembunyi dibalik perbukitan, serta menawarkan gemericik air terjun dan pesona alam yang menawan.',
  'Objek wisata Bur Telege atau gunung telaga berada di desa Hakim Bale Bujang, Aceh Tengah, pada ketinggian 1.450 meter di atas permukaan laut. Wisatawan hanya butuh waktu perjalanan sekitar 30 menit dari pusat kota Takengon menuju Bur Telege.',
];

var numberbottomnavigationBar = 0;

/*List<topDestinations> topdestinations =
    List.generate(destinationsList.length, (index) {
  return topDestinations(
      address: destinationsList[index],
      description: destinationsList[index],
      imageUrl: destinationsList[index],
      placeName: destinationsList[index]);
});*/

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final mediaqueryWidth = MediaQuery.of(context).size.width;
    final mediaqueryHeight = MediaQuery.of(context).size.height;
    List<dynamic> showPage = [
      _homePage(mediaqueryHeight, mediaqueryWidth),
      _userPage(mediaqueryHeight, mediaqueryWidth)
    ];
    return Scaffold(
      body: showPage[numberbottomnavigationBar],
      bottomNavigationBar: _bottomnavigationBar(),
    );
  }

  SafeArea _userPage(double mediaqueryHeight, double mediaqueryWidth) {
    return SafeArea(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(20),
          child: Text("Profile"),
        ),
        Container(
          height: mediaqueryHeight / 15,
          width: mediaqueryWidth,
          decoration: BoxDecoration(color: Colors.amber.shade500),
          child: Row(
            children: [
              Container(
                //margin: EdgeInsets.all(10),
                height: mediaqueryHeight,
                width: mediaqueryWidth / 5,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://picsum.photos/seed/picsum/200/300"))),
              ),
              Text(
                "Muhammad Ali",
                style: GoogleFonts.alegreya(
                    fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                "Email",
                style: GoogleFonts.alegreya(
                    fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                "example@gmail.com",
                style: GoogleFonts.alegreya(
                    fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                "Password",
                style: GoogleFonts.alegreya(
                    fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Text(
                "12345",
                style: GoogleFonts.alegreya(
                    fontSize: 14, fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.bottomCenter,
            //alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Logout",
                  style: GoogleFonts.alegreya(
                      fontSize: 20, fontWeight: FontWeight.w700),
                )),
          ),
        ),
        SizedBox(
          height: 10,
        )
      ],
    ));
  }

  BottomNavigationBar _bottomnavigationBar() {
    return BottomNavigationBar(
      selectedItemColor: Colors.blue.shade500,
      unselectedItemColor: Colors.grey.shade600,
      backgroundColor: Colors.white,
      currentIndex: numberbottomnavigationBar,
      items: const [
        BottomNavigationBarItem(icon: Icon(FeatherIcons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(FeatherIcons.user), label: "User")
      ],
      onTap: (value) {
        setState(() {
          print(value);
          numberbottomnavigationBar = value;
        });
      },
    );
  }

  SafeArea _homePage(double mediaqueryHeight, double mediaqueryWidth) {
    return SafeArea(
      child: Column(
        children: [
          _topBarr(mediaqueryHeight, mediaqueryWidth),
          _pointofInterest(),
          _search(),
          _destinationCategory(mediaqueryHeight, mediaqueryWidth),
          _topDestinations(),
          _gridviewtopDestinations(mediaqueryHeight, mediaqueryWidth)
        ],
      ),
    );
  }

  Expanded _gridviewtopDestinations(
      double mediaqueryHeight, double mediaqueryWidth) {
    return Expanded(
      child: GridView.builder(
        itemCount: destinationsList.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, crossAxisSpacing: 0, mainAxisSpacing: 25),
        itemBuilder: (context, index) {
          final topDestinations place = destinationsList[index];
          return Column(
            children: [
              Flexible(
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return detailpageDestinations(
                          place: place,
                        );
                      },
                    ));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    height: mediaqueryHeight / 4,
                    width: mediaqueryWidth,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(30),
                      image: DecorationImage(
                          image: NetworkImage(place.imageUrl),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
              Text(
                place.placeName,
                style: GoogleFonts.alegreya(
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
            ],
          );
        },
      ),
    );
  }

  Row _topDestinations() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
          child: Text(
            "Top Destinations",
            style: GoogleFonts.alegreya(
                fontSize: 24, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        )
      ],
    );
  }

  Container _destinationCategory(
      double mediaqueryHeight, double mediaqueryWidth) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
      padding: const EdgeInsets.all(5),
      height: mediaqueryHeight / 8,
      width: mediaqueryWidth,
      //color: Colors.amber.shade100,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        _customdestinationCategory(
          image: image1,
          text: "Forest",
        ),
        _customdestinationCategory(image: image2, text: "Camping"),
        _customdestinationCategory(image: image3, text: "Hiking"),
        _customdestinationCategory(image: image4, text: "Mountain"),
        _customdestinationCategory(image: image5, text: "Beach")
      ]),
    );
  }

  Container _search() {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextFormField(
        decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(FeatherIcons.search),
            hintText: "Search area",
            hintStyle: GoogleFonts.roboto(color: Colors.grey.shade500)),
      ),
    );
  }

  Row _pointofInterest() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Text(
            "Point Of Interest",
            style: GoogleFonts.alegreya(
                fontSize: 28, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ),
      ],
    );
  }

  Row _topBarr(double mediaqueryHeight, double mediaqueryWidth) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              RichText(
                text: TextSpan(
                  text: "Welcome Back",
                  style: GoogleFonts.roboto(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
              ),
              RichText(
                text: TextSpan(
                  text: "Muhammad Ali",
                  style: GoogleFonts.alegreya(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 140,
          ),
          Container(
            //margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
            height: mediaqueryHeight / 10,
            width: mediaqueryWidth / 8,
            decoration: const BoxDecoration(
                color: Colors.amber,
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: NetworkImage(
                        "https://picsum.photos/seed/picsum/200/300"))),
          )
        ]);
  }
}

class _customdestinationCategory extends StatelessWidget {
  final String image;
  final String text;
  const _customdestinationCategory({
    required this.image,
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
          image: AssetImage(image),
          height: 45,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Text(
            text,
            style: GoogleFonts.alegreya(
                fontSize: 14,
                fontWeight: FontWeight.w700,
                color: Colors.grey.shade500),
          ),
        )
      ],
    );
  }
}
