
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SportPage extends StatelessWidget {
  const SportPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // iconos
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.menu),
                      Icon(Icons.notifications_outlined),
                    ],
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  // Texto: hello & welcome
                  Text(
                    "Hello David",
                    style: GoogleFonts.lato(
                      color: Colors.black87,
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Welcome back!",
                    style: GoogleFonts.lato(
                      color: Colors.black87,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  // imagen
                  Container(
                    height: 240.0,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(
                          "https://s03.s3c.es/imag/_v0/770x420/8/c/4/running-1.jpg",
                        ),
                      ),
                    ),
                    child: Stack(
                      children: [
                        // Degradado Gradient
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black87.withOpacity(0.75),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Mulai berolahraga dan mencari teman bersama",
                                style: GoogleFonts.lato(
                                  color: Colors.white,
                                  fontSize: 25.0,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              SizedBox(
                                height: 17.0,
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffFF006F),
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: (){},
                                child: Text(
                                  "Star Now",
                                  style: GoogleFonts.lato(
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                              ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  // Texto
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categoría",
                        style: GoogleFonts.lato(
                          color: Colors.black87,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Text(
                        "Ver más",
                        style: GoogleFonts.lato(
                          color: Colors.black87,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  // Contenedores
                  GridView.count(
                    shrinkWrap: true, // por que tiene su propio scroll
                    physics: BouncingScrollPhysics(),
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    mainAxisSpacing: 5.0,
                    crossAxisSpacing: 5.0,
                    children: [
                      Container(
                        margin: EdgeInsets.all(4.0),
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.07),
                              offset: Offset(4,4),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/swimming.png",),
                            Text(
                              "Swimming",
                              style: GoogleFonts.lato(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4.0),
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.07),
                              offset: Offset(4,4),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/basketball.png",),
                            Text(
                              "Basketball",
                              style: GoogleFonts.lato(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4.0),
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.07),
                              offset: Offset(4,4),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/football.png",),
                            Text(
                              "Futball",
                              style: GoogleFonts.lato(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4.0),
                        padding: EdgeInsets.all(12.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12.withOpacity(0.07),
                              offset: Offset(4,4),
                              blurRadius: 10.0,
                            ),
                          ],
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset("assets/images/boxing.png",),
                            Text(
                              "Boxing",
                              style: GoogleFonts.lato(
                                color: Colors.black87,
                                fontWeight: FontWeight.w500,
                                fontSize: 16.0,
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
                    padding: EdgeInsets.all(12.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.07),
                          offset: Offset(4,4),
                          blurRadius: 12.0,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.sports_soccer_outlined,
                              size: 15.0,
                            ),
                            SizedBox(width: 6.0),
                            Text(
                              "Tu deporte favorito",
                              style: GoogleFonts.lato(
                                color: Colors.black,
                                fontWeight: FontWeight.w700,
                                fontSize: 16.0,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 6.0,
                        ),
                        Row(
                          children: [
                            const Icon(
                              Icons.location_on,
                              size: 15.0,
                            ),
                            SizedBox(width: 6.0),
                            Text(
                              "Av. Nicolás de Piérla 2021",
                              style: GoogleFonts.lato(
                                color: Colors.black38,
                                fontSize: 15.0,
                              ),

                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
            ),
          ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home",),
          BottomNavigationBarItem(icon: Icon(Icons.contact_page), label: "Contact",),
        ],
      ),
    );
  }
}
