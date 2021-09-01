import 'package:flutter/material.dart';
import 'package:travel_apps/constants.dart';
import 'package:travel_apps/models/Wisata.dart';
import 'package:travel_apps/widgets/build_button.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: buat constructor index dan masukkan constructor ke daftarWisata[index]
    Wisata wisata = daftarWisata[0];

    Size mediaQuery = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: mediaQuery.width,
          margin: EdgeInsets.symmetric(horizontal: 32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 31.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.blue.withOpacity(0.4),
                          offset: Offset(0, 10),
                          blurRadius: 20.0)
                    ]),
                child: Stack(children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.asset(wisata.imgPath),
                  ),
                  Container(
                    margin:
                        EdgeInsets.symmetric(horizontal: 13.0, vertical: 11.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BuildButton(icon: Icon(Icons.arrow_back_ios_new)),
                        BuildButton(icon: Icon(Icons.favorite_border)),
                      ],
                    ),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 19.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      wisata.title,
                      style: kTitleStyle,
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              wisata.rating.toString(),
                              style: kTitleStyle,
                              textAlign: TextAlign.center,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellowAccent,
                              size: 30.0,
                            )
                          ]),
                    ),
                  ],
                ),
              ),
              Text(wisata.description, style: kBodyStyle),
            ],
          ),
        ),
      ),
    );
  }
}
