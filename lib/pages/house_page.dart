import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HousePage extends StatelessWidget {
  const HousePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF9FBFC),
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
                Container(
                  height: 44.0,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
