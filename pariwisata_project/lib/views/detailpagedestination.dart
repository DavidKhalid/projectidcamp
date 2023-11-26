import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pariwisata_project/views/fulldetailpagedestination.dart';
import 'package:pariwisata_project/views/homepage.dart';

class detailpageDestinations extends StatelessWidget {
  detailpageDestinations({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaqueryHeight = MediaQuery.of(context).size.height;
    final mediaqueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          _arrowBack(context),
          _contentImage(mediaqueryHeight, mediaqueryWidth),
          _namePlace(),
          _address(),
          _description(),
          const Divider(
            indent: 20,
            endIndent: 20,
            color: Colors.black,
          ),
          _fillDescription(mediaqueryHeight, mediaqueryWidth, context)
        ],
      )),
    );
  }

  Expanded _fillDescription(
      double mediaqueryHeight, double mediaqueryWidth, BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(left: 20, right: 20, top: 5),
        height: mediaqueryHeight,
        width: mediaqueryWidth,
        decoration: BoxDecoration(
            //color: Colors.amber.shade500,
            ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              textAlign: TextAlign.justify,
              overflow: TextOverflow.ellipsis,
              maxLines: 6,
              "It is a long establis. Lorem ipsum dolor sit amet, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in consectetur adipiscing elit, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do",
              style: GoogleFonts.alegreya(
                  fontWeight: FontWeight.w500, fontSize: 14),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext) {
                  return fulldetailpageDestinations();
                }));
              },
              child: Text(
                "Read More ...",
                style: GoogleFonts.alegreya(
                    fontSize: 14,
                    fontWeight: FontWeight.w800,
                    color: Colors.blue.shade500),
              ),
            )),
          ],
        ),
      ),
    );
  }

  Row _description() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 30),
          child: Text(
            "Description",
            style:
                GoogleFonts.alegreya(fontSize: 18, fontWeight: FontWeight.w700),
          ),
        )
      ],
    );
  }

  Row _address() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 5),
          child: Text(
            "Address",
            style:
                GoogleFonts.alegreya(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    );
  }

  Row _namePlace() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 20),
          child: Text(
            "Name Place",
            style: GoogleFonts.alegreya(
                fontSize: 28, fontWeight: FontWeight.w700, color: Colors.black),
          ),
        ),
      ],
    );
  }

  Container _contentImage(double mediaqueryHeight, double mediaqueryWidth) {
    return Container(
      margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
      height: mediaqueryHeight / 2,
      width: mediaqueryWidth,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        image: DecorationImage(
            image: NetworkImage(
              topdestinations[0].image.toString(),
            ),
            fit: BoxFit.cover),
        borderRadius: BorderRadius.circular(25),
      ),
    );
  }

  Row _arrowBack(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          child: IconButton(
              alignment: Alignment.bottomLeft,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(FeatherIcons.arrowLeftCircle)),
        ),
      ],
    );
  }
}
