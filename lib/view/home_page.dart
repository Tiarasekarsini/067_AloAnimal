import 'package:aloanimal/controller/rolebase_controller.dart';
import 'package:aloanimal/view/aboutanimal/aboutanimal.dart';
import 'package:aloanimal/view/animaldata/animaldata.dart';
import 'package:aloanimal/view/diagnosis/diagnosis.dart';
import 'package:aloanimal/view/diagnosis/riwayat_diagnosis.dart';
import 'package:aloanimal/view/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ///menginisiasi kelas RoleBaseController
  final RoleBaseController rbc = RoleBaseController();

  ///membuat inisiasi untuk carusol
  final PageController _controller = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 20, left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Hello, Pawrents!',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.logout),

                      ///proses ketika pengguna menekan ikon sign out
                      onPressed: () {
                        rbc.signOut();

                        ///mengalihkan ke halaman Sign In
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => SignIn()));
                      },
                    ),
                  ],
                ),
              ),

              ///membuat Carousel
              Container(
                height: 200,
                margin: const EdgeInsets.only(top: 20, left: 27, right: 27),
                child: PageView(
                  controller: _controller,
                  onPageChanged: (int page) {
                    setState(() {
                      _currentPage = page;
                    });
                  },
                  scrollDirection: Axis.horizontal,
                  children: [
                    ///slide2 yang ada di carousel
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(242, 131, 131, 255),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ],
                      ),
                      child: Image.asset('assets/images/homepage.png'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF854),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ],
                      ),
                      child: Image.asset('assets/images/homepage2.png'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFFF72BE),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ],
                      ),
                      child: Image.asset('assets/images/homepage3.png'),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFADE62A),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                            spreadRadius: 7,
                            blurRadius: 10,
                            offset: const Offset(1, 1),
                            color: Colors.grey.withOpacity(0.3),
                          ),
                        ],
                      ),
                      child: Image.asset('assets/images/homepage4.png'),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),

              ///membuat indicator page untuk carousel
              SmoothPageIndicator(
                controller: _controller,
                count: 4,
                effect: ExpandingDotsEffect(
                  activeDotColor: Colors.grey.shade800,
                  dotColor: Colors.grey.shade300,
                ),
              ),
              const SizedBox(height: 10),
              const Divider(
                color: Color.fromARGB(94, 158, 158, 158),
                thickness: 1,
                indent: 27,
                endIndent: 27,
              ),
              const SizedBox(height: 10),
              Text(
                'This is our feature: ',
                style:
                    GoogleFonts.lato(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              ///membuat row untuk menampilkan fitur yang adda pada aplikasi aloanimal
              ///dan nantinya akan diarahkan ke halaman lain apabila pengguna mengklik salah satu gambar
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AnimalData()));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 130,
                          margin: const EdgeInsets.only(left: 42, top: 20),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 10,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Image.asset('assets/images/datakucing.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 130,
                    margin: const EdgeInsets.only(left: 42, top: 20),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AboutAnimal()));
                      },
                      child: Center(
                        child: Image.asset('assets/images/aboutanimal.png'),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Diagnosis()));
                    },
                    child: Column(
                      children: [
                        Container(
                          height: 130,
                          width: 130,
                          margin: const EdgeInsets.only(left: 42, top: 20),
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(13),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.shade200,
                                blurRadius: 10,
                                spreadRadius: 5,
                              ),
                            ],
                          ),
                          child: Center(
                            child: Image.asset('assets/images/diagnosis.png'),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                    width: 130,
                    margin: const EdgeInsets.only(left: 42, top: 20),
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade200,
                          blurRadius: 10,
                          spreadRadius: 5,
                        ),
                      ],
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RiwayatDiagnosis()));
                      },
                      child: Center(
                        child: Image.asset('assets/images/history.png'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}
