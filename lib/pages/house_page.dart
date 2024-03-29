import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HousePage extends StatelessWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FBFC),
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Location e icono de notificaciones
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xff349DFD),
                                    size: 15,
                                  ),
                                  Text(
                                    "Location",
                                    style: GoogleFonts.montserrat(
                                        color: Colors.black38,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Arequipa, Perú",
                                style: GoogleFonts.montserrat(
                                    color: Color(0xff31404E),
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black12.withOpacity(0.05),
                                  offset: Offset(5, 5),
                                  blurRadius: 10,
                                ),
                              ]),
                          child: Stack(
                            children: [
                              Icon(
                                Icons.notifications,
                                color: Color(0xffC5C5C5),
                              ),
                              Positioned(
                                top: 4,
                                right: 3,
                                child: Container(
                                  height: 8,
                                  width: 8,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.redAccent,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // Input Search
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.05),
                              blurRadius: 12,
                              offset: Offset(-4, 4),
                            ),
                          ]),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: GoogleFonts.montserrat(
                            color: Color(0xffB2B2B3),
                            fontWeight: FontWeight.w500,
                          ),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Color(0xffC6C6C6),
                          ),
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 26.0,
                    ),
                    // Recomendation I
                    Text(
                      "Category",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff31404E),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    // Scroll lugares
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          Container(
                            height: 44,
                            margin: EdgeInsets.only(right: 14.0),
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 6.0,
                            ),
                            decoration: BoxDecoration(
                                color: Color(0xffEFF4FD),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/house.png',
                                  height: 26,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "House",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff31404E),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 44,
                            margin: EdgeInsets.only(right: 14.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 6.0),
                            decoration: BoxDecoration(
                                color: Color(0xffF8F8F8),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/house.png',
                                  height: 26,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Hotel",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xffA7AAAF),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 44,
                            margin: EdgeInsets.only(right: 14.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 6.0),
                            decoration: BoxDecoration(
                                color: Color(0xffF8F8F8),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/house.png',
                                  height: 26,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Apartment",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xffA7AAAF),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 44,
                            margin: EdgeInsets.only(right: 14.0),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.0, vertical: 6.0),
                            decoration: BoxDecoration(
                                color: Color(0xffF8F8F8),
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/house.png',
                                  height: 26,
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  "Hotel",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xffA7AAAF),
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 24.0,
                    ),
                    Text(
                      "Recomendation",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff31404E),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      child: Row(
                        children: [
                          ItemSliderRecomendation(),
                          ItemSliderRecomendation(),
                          ItemSliderRecomendation(),
                          ItemSliderRecomendation(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Text(
                      "Recomendation",
                      style: GoogleFonts.montserrat(
                          color: Color(0xff31404E),
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    ListView.builder(
                      itemCount: 10,
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      itemBuilder: (conext, index) {
                        return Container(
                          height: 90,
                          padding: EdgeInsets.all(10.0),
                          margin: EdgeInsets.only(bottom: 12.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(14.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black12.withOpacity(0.07),
                                blurRadius: 12.0,
                                offset: Offset(4, 4),
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 70,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12.0),
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: NetworkImage(
                                      "https://i.pinimg.com/originals/e8/f4/e2/e8f4e23622efe8e2a09adbfb93fbc504.jpg",
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 12.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Padanaran House",
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xff434B55),
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.star,
                                            size: 13.0,
                                            color: Color(0xffFBC014),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 13.0,
                                            color: Color(0xffFBC014),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 13.0,
                                            color: Color(0xffFBC014),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 13.0,
                                            color: Color(0xffFBC014),
                                          ),
                                          Icon(
                                            Icons.star,
                                            size: 13.0,
                                            color: Color(0xffFBC014),
                                          ),
                                          SizedBox(
                                            width: 10.0,
                                          ),
                                          Text(
                                            "4.5",
                                            style: GoogleFonts.montserrat(
                                              color: Colors.black38,
                                              fontSize: 13.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            color: Colors.black38,
                                            size: 14.0,
                                          ),
                                          Expanded(
                                            child: Text(
                                              "Av. Republica de Panama 1250 cruce con Av. Andrés Arambuú",
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: GoogleFonts.montserrat(
                                                color: Colors.black38,
                                                fontSize: 13.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 80.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Barra Flotante
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
              height: 66,
              decoration: BoxDecoration(
                color: Color(0xff349DFD),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home_filled, color: Colors.white, size: 30.0,),
                  Icon(Icons.shopping_cart, color: Colors.white38, size: 30.0,),
                  Icon(Icons.bookmark, color: Colors.white38, size: 30.0,),
                  Icon(Icons.person, color: Colors.white38, size: 30.0,),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ItemSliderRecomendation extends StatelessWidget {
  const ItemSliderRecomendation({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240,
      margin: EdgeInsets.only(right: 14.0, bottom: 20.0),
      padding: EdgeInsets.all(14.0),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.05),
              offset: Offset(4, 4),
              blurRadius: 12,
            ),
          ]),
      child: Column(
        children: [
          Container(
            height: 120,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://www.requieromicasaventas.com/wp-content/uploads/2019/09/Casas-en-venta-en-Lima.jpg"),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  "Minimalist House",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: GoogleFonts.montserrat(
                    color: Color(0xff434B55),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.star, size: 14.0, color: Color(0xffFEC00A)),
                  SizedBox(
                    width: 3.0,
                  ),
                  Text(
                    "4.5",
                    style: GoogleFonts.montserrat(
                      color: Color(0xff434B55),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 6.0,
          ),
          Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "\$ 643",
                          style: GoogleFonts.montserrat(
                              color: Color(0xff349DFD),
                              fontWeight: FontWeight.w700,
                              fontSize: 18),
                        ),
                        Text(
                          "/Month",
                          style: GoogleFonts.montserrat(
                              color: Colors.black38,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 6.0,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 14.0,
                          color: Colors.black38,
                        ),
                        Expanded(
                          child: Text(
                            "Arequipa, Perú Lima Cusco",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                                color: Colors.black38,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Color(0xffF8F8F8),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Icon(
                  Icons.bookmark,
                  color: Colors.black38,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
