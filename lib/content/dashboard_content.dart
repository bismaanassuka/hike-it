import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:hiking_app/booking.dart';
// import 'package:hiking_app/booking.dart';
import 'package:hiking_app/grid_all.dart';
import 'package:hiking_app/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DashboardContent extends StatefulWidget {
  const DashboardContent({Key? key}) : super(key: key);

  @override
  State<DashboardContent> createState() => _DashboardContentState();
}

class _DashboardContentState extends State<DashboardContent> {
  int _current = 0;
  final CarouselController _controller = CarouselController();

  List<Widget> slider = [
    SizedBox(
      height: getHeight(200),
      child: Image.asset(
        "assets/images/dashboard/slider_bromo.png",
      ),
    ),
    SizedBox(
      height: getHeight(200),
      child: Image.asset(
        "assets/images/dashboard/slider_bromo.png",
      ),
    ),
    SizedBox(
      height: getHeight(200),
      child: Image.asset(
        "assets/images/dashboard/slider_bromo.png",
      ),
    ),
  ];

  List grid = [
    {
      'image': "assets/images/dashboard/grid-raung.jpg",
      'title': "Gunung Raung",
      'location': "Jember, Jawa Timur",
    },
    {
      'image': "assets/images/dashboard/grid-argopuro.jpg",
      'title': "Gunung Argopuro",
      'location': "Jember, Jawa Timur",
    },
    {
      'image': "assets/images/dashboard/grid-semeru.jpg",
      'title': "Gunung Semeru",
      'location': "Lumajang, Jawa Timur",
    },
    {
      'image': "assets/images/dashboard/grid-lemongan.jpg",
      'title': "Gunung Lemongan",
      'location': "Lumajang, Jawa Timur",
    },
    {
      'image': "assets/images/dashboard/grid-raung.jpg",
      'title': "Gunung Raung",
      'location': "Jember, Jawa Timur",
    },
    {
      'image': "assets/images/dashboard/grid-argopuro.jpg",
      'title': "Gunung Argopuro",
      'location': "Jember, Jawa Timur",
    },
    {
      'image': "assets/images/dashboard/grid-semeru.jpg",
      'title': "Gunung Semeru",
      'location': "Lumajang, Jawa Timur",
    },
    {
      'image': "assets/images/dashboard/grid-lemongan.jpg",
      'title': "Gunung Lemongan",
      'location': "Lumajang, Jawa Timur",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getHeight(20),
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
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                    gradient: gradient,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(16),
                    color: (Theme.of(context).brightness == Brightness.dark
                            ? Colors.white
                            : Colors.white)
                        .withOpacity(_current == entry.key ? 0.9 : 0.4),
                  ),
                ),
              );
            },
          ).toList(),
        ),
        Row(
          children: [
            const Text(
              "Destinasi Terdekat",
              style: TextStyle(
                fontSize: 16,
                fontWeight: bold,
                color: hitam,
              ),
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                Get.to(() => const GridAll());
              },
              child: const Text(
                "Selengkapnya",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: bold,
                  color: ungu,
                ),
              ),
            )
          ],
        ),
        SizedBox(
          height: getHeight(20),
        ),
        Expanded(
          child: SizedBox(
            child: AlignedGridView.count(
              itemCount: grid.length,
              crossAxisCount: 2,
              mainAxisSpacing: 0,
              crossAxisSpacing: 10,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Get.to(() => const Booking()),
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 20),
                    margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      // color: ungu,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: hitam.withOpacity(0.2),
                          blurRadius: 1,
                          offset: const Offset(0, 1),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: AspectRatio(
                              aspectRatio: 1.2,
                              child: Image.asset(
                                '${grid[index]['image']}',
                                width: double.infinity,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: getHeight(10),
                        ),
                        Text(
                          '${grid[index]['title']}',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: bold,
                          ),
                        ),
                        SizedBox(
                          height: getHeight(8),
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                                "assets/icons/dashboard/Location.svg"),
                            Expanded(
                              child: Text(
                                '${grid[index]['location']}',
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: normal,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
