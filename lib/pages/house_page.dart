import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HousePage extends StatelessWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF9FBFC),
      body: SafeArea(
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
                          Row(
                            children: [
                              const Icon(
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
                          const SizedBox(
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
                          const Icon(
                            Icons.notifications,
                            color: Color(0xffC5C5C5),
                          ),
                          Positioned(
                            top: 4,
                            right: 3,
                            child: Container(
                              height: 8,
                              width: 8,
                              decoration: const BoxDecoration(
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
                const SizedBox(
                  height: 20.0,
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
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
                      suffixIcon: const Icon(
                        Icons.search,
                        color: Color(0xffC6C6C6),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 26.0,
                ),
                Text(
                  "Category",
                  style: GoogleFonts.montserrat(
                    color: Color(0xff31404E),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  child: Row(
                    children: [
                      Container(
                        height: 44.0,
                        margin: const EdgeInsets.only(right: 14.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 6.0),
                        decoration: BoxDecoration(
                          color: Color(0xffEFF4FD),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/house.png",
                              height: 26.0,
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "House",
                              style: GoogleFonts.montserrat(
                                color: Color(0xff31404E),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 44.0,
                        margin: const EdgeInsets.only(right: 14.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 6.0),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/house.png",
                              height: 26.0,
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Hotel",
                              style: GoogleFonts.montserrat(
                                color: Color(0xffA7AAAF),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 44.0,
                        margin: const EdgeInsets.only(right: 14.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 6.0),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/house.png",
                              height: 26.0,
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Apartment",
                              style: GoogleFonts.montserrat(
                                color: Color(0xffA7AAAF),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 44.0,
                        margin: const EdgeInsets.only(right: 14.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 6.0),
                        decoration: BoxDecoration(
                          color: Color(0xffF8F8F8),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                              "assets/images/house.png",
                              height: 26.0,
                            ),
                            const SizedBox(
                              width: 8.0,
                            ),
                            Text(
                              "Apartment",
                              style: GoogleFonts.montserrat(
                                color: Color(0xffA7AAAF),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 26.0,
                ),
                // Recomendations
                Text(
                  "Recomendation",
                  style: GoogleFonts.montserrat(
                    color: Color(0xff31404E),
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 16.0,
                ),
                Padding(
                  padding: EdgeInsets.all(14.0),
                  child: Container(
                    width: 240.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.05),
                          offset: Offset(4, 4),
                          blurRadius: 12.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          height: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                "https://www.requieromicasaventas.com/wp-content/uploads/2019/09/Casas-en-venta-en-Lima.jpg",
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Text(
                                "Minimalist House",
                                style: GoogleFonts.montserrat(
                                    color: const Color(0xff434B55),
                                    fontWeight: FontWeight.w600,
                                  fontSize: 15.0,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.star,
                                  size: 14.0,
                                  color: Color(0xffFEC00A),
                                ),
                                const SizedBox(
                                  width: 3.0,
                                ),
                                Text(
                                  "4.5",
                                  style: GoogleFonts.montserrat(
                                      color: Color(0xff434B55),
                                      fontWeight: FontWeight.w600),
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
                                        "\$ 734",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.blueAccent,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 18.0,
                                        ),
                                      ),
                                      Text(
                                        "/Month",
                                        style: GoogleFonts.montserrat(
                                          color: Colors.black38,
                                          fontWeight: FontWeight.w500,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 6.0,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        size: 15.0,
                                        color: Colors.black54,
                                      ),
                                      Expanded(
                                        child: Text(
                                          "Av. José Larco 1520 con crue",
                                          style: GoogleFonts.montserrat(
                                            color: Colors.black54,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14.0,
                                          ),
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
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
                                color: Colors.black12.withOpacity(0.05),
                                borderRadius: BorderRadius.circular(10.0),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26.withOpacity(0.03),
                                    offset: Offset(4, 4),
                                    blurRadius: 12.0,
                                  ),
                                ],
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
