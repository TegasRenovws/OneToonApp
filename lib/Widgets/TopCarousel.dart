import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:one_toon/Models/manga_model.dart';

class TopCarousel extends StatelessWidget {
  const TopCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Populer Manga',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              GestureDetector(
                onTap: () => print('Selengkapnya'),
                child: Text(
                  'Selengkapnya',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue[300],
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 350.0,
          // color: Colors.blue,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: destinations.length,
            itemBuilder: (BuildContext context, int index) {
              Destination destination = destinations[index];
              return Container(
                margin: EdgeInsets.all(10.0),
                width: 210.0,
                // color: Colors.red,
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Positioned(
                      bottom: 15.0,
                      child: Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          color: Colors.grey[200],
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                destination.title,
                                style: TextStyle(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                    letterSpacing: 1.2),
                              ),
                              Text(
                                destination.description,
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0),
                        ],
                      ),
                      child: Stack(
                        children: <Widget>[
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20.0),
                            child: Image(
                              height: 180.0,
                              width: 180.0,
                              image: AssetImage(destination.imageUrl),
                              fit: BoxFit.cover,
                            ),
                          ),
                          // Positioned(
                          //   left: 10.0,
                          //   top: 10.0,
                          //   child: Column(
                          //     crossAxisAlignment: CrossAxisAlignment.start,
                          //     children: <Widget>[
                          //       Row(
                          //         children: [
                          //           Text(
                          //             destination.country,
                          //             style: TextStyle(
                          //               color: Colors.white,
                          //               fontSize: 24.0,
                          //               fontWeight: FontWeight.w600,
                          //               letterSpacing: 1.2,
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //       Row(
                          //         children: [
                          //           Icon(FontAwesomeIcons.locationArrow,
                          //               size: 10.0, color: Colors.white),
                          //           SizedBox(width: 5.0),
                          //           Text(
                          //             destination.country,
                          //             style: TextStyle(
                          //               color: Colors.white,
                          //             ),
                          //           ),
                          //         ],
                          //       ),
                          //     ],
                          //   ),
                          // )
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
