import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hiking_app/pemandu.dart';
import 'package:hiking_app/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(const Booking());
}

class Booking extends StatefulWidget {
  const Booking({Key? key}) : super(key: key);

  @override
  State<Booking> createState() => _BookingState();
}

class _BookingState extends State<Booking> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> slider = [
    SizedBox(
      height: getHeight(150),
      child: Image.asset(
        'assets/images/booking/slider.png',
      ),
    ),
    SizedBox(
      height: getHeight(150),
      child: Image.asset(
        'assets/images/booking/slider.png',
      ),
    ),
    SizedBox(
      height: getHeight(150),
      child: Image.asset(
        'assets/images/booking/slider.png',
      ),
    ),
  ];

  List<Map<String, String>> other = [
    {
      'image': 'assets/images/booking/other1.png',
    },
    {
      'image': 'assets/images/booking/other2.png',
    },
    {
      'image': 'assets/images/booking/other3.png',
    },
    {
      'image': 'assets/images/booking/other4.png',
    },
    {
      'image': 'assets/images/booking/other5.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              SizedBox(
                height: AppBar().preferredSize.height,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => Get.back(),
                      child: SizedBox(
                        width: getWidth(22),
                        height: getHeight(22),
                        child: SvgPicture.asset('assets/icons/left.svg'),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                      width: getWidth(22),
                      height: getHeight(22),
                      child: SvgPicture.asset('assets/icons/pemandu/Star.svg'),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getHeight(8),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: SafeArea(
                    child: Container(
                      padding: horpadding,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: getWidth(35),
                                height: getHeight(35),
                                child: const Image(
                                  image: AssetImage(
                                      'assets/images/booking/circleprofile.png'),
                                ),
                              ),
                              SizedBox(
                                width: getWidth(15),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    pemandu,
                                    style: TextStyle(
                                        fontWeight: bold,
                                        fontSize: getWidth(15),
                                        color: hitam),
                                  ),
                                  Text(
                                    deskPemandu,
                                    style: TextStyle(
                                        fontWeight: semibold,
                                        fontSize: getWidth(12),
                                        color: abuAbu),
                                  )
                                ],
                              )
                            ],
                          ),
                          SizedBox(
                            height: getHeight(20),
                          ),
                          Text(
                            mount,
                            style: TextStyle(
                              fontWeight: bold,
                              fontSize: getWidth(19),
                            ),
                          ),
                          SizedBox(
                            height: getHeight(3),
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: getWidth(20),
                                height: getHeight(20),
                                child: SvgPicture.asset(
                                    'assets/icons/booking/Location.svg'),
                              ),
                              SizedBox(
                                width: getWidth(5),
                              ),
                              Text(
                                location,
                                style: TextStyle(
                                    fontWeight: normal,
                                    fontSize: getWidth(15),
                                    color: abuAbu),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: getHeight(10),
                          ),
                          CarouselSlider(
                            items: slider,
                            carouselController: _controller,
                            options: CarouselOptions(
                              autoPlay: true,
                              enlargeCenterPage: true,
                              viewportFraction: 1,
                              aspectRatio: 2.0,
                              onPageChanged: (index, reason) {
                                setState(
                                  () {
                                    _current = index;
                                  },
                                );
                              },
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: slider.asMap().entries.map(
                              (entry) {
                                return GestureDetector(
                                  onTap: () =>
                                      _controller.animateToPage(entry.key),
                                  child: Container(
                                    width: getWidth(9),
                                    height: getHeight(9),
                                    margin: EdgeInsets.symmetric(
                                        vertical: getHeight(10),
                                        horizontal: getWidth(2.5)),
                                    decoration: BoxDecoration(
                                      gradient: gradient,
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5),
                                      color: (Theme.of(context).brightness ==
                                                  Brightness.dark
                                              ? Colors.white
                                              : Colors.white)
                                          .withOpacity(_current == entry.key
                                              ? 0.9
                                              : 0.4),
                                    ),
                                  ),
                                );
                              },
                            ).toList(),
                          ),
                          SizedBox(
                            height: getHeight(0),
                          ),
                          Text(
                            desk,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: bold,
                              fontSize: getWidth(16),
                            ),
                          ),
                          ExpandableText(
                            deskFill,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              color: hitam,
                              fontWeight: normal,
                              fontSize: getHeight(13.5),
                            ),
                            expandText: 'See More',
                            collapseText: 'See Less',
                            maxLines: 3,
                            animation: true,
                            animationDuration: const Duration(seconds: 2),
                            collapseOnTextTap: true,
                            expandOnTextTap: true,
                          ),
                          SizedBox(
                            height: getHeight(8),
                          ),
                          Text(
                            fasilitas,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: bold,
                              fontSize: getWidth(16),
                            ),
                          ),
                          Text(
                            fasilFill,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: normal,
                              fontSize: getWidth(13.5),
                            ),
                          ),
                          SizedBox(
                            height: getHeight(8),
                          ),
                          Text(
                            alur,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: bold,
                              fontSize: getWidth(16),
                            ),
                          ),
                          Text(
                            alurFill,
                            textAlign: TextAlign.justify,
                            style: TextStyle(
                              fontWeight: normal,
                              fontSize: getWidth(13.5),
                            ),
                          ),
                          SizedBox(
                            height: getHeight(20),
                          ),
                          // SizedBox(
                          //   width: getWidth(350),
                          //   height: getHeight(50),
                          //   child: ListView.separated(
                          //       padding: EdgeInsets.zero,
                          //       itemCount: other.length,
                          //       shrinkWrap: true,
                          //       scrollDirection: Axis.horizontal,
                          //       itemBuilder: (BuildContext context, index) {
                          //         return SizedBox(
                          //           child: Image.asset(
                          //             '${other[index]['image']}',
                          //             width: getWidth(50),
                          //             height: getHeight(50),
                          //           ),
                          //         );
                          //       },
                          //       separatorBuilder: (context, index) {
                          //         return SizedBox(
                          //           width: getWidth(24.25),
                          //         );
                          //       }),
                          // ),

                          SizedBox(
                            height: getHeight(20),
                          ),
                          SizedBox(
                            child: Image.asset(
                              'assets/images/booking/maps.png',
                              width: getWidth(350),
                              height: getHeight(116),
                            ),
                          ),
                          SizedBox(
                            height: getHeight(105),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: horpadding,
              width: getWidth(350),
              height: getHeight(50),
              margin: EdgeInsets.only(bottom: getHeight(20)),
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [pink, ungu],
                  ),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: shadow.withOpacity(0.5),
                        blurRadius: 50,
                        offset: const Offset(0, -13))
                  ]),
              child: InkWell(
                onTap: () {
                  Get.to(() => const PsnPemandu());
                },
                child: Center(
                  child: Text(
                    'Lihat Pemandu',
                    style: TextStyle(
                      color: putih,
                      fontWeight: bold,
                      fontSize: getWidth(16),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
