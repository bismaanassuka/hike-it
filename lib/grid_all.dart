import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:hiking_app/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

List listFavourite = [
  {
    'image': "assets/images/favourite/GlagahArum.jpg",
    'title': "Glagah Arum",
    'location': "Lumajang, Jawa Timur",
  },
  {
    'image': "assets/images/favourite/RanuKumbolo.jpg",
    'title': "Ranu Kumbolo",
    'location': "Lumajang, Jawa Timur",
  },
  {
    'image': "assets/images/favourite/RanuRegulo.jpg",
    'title': "Ranu Regulo",
    'location': "Lumajang, Jawa Timur",
  },
  {
    'image': "assets/images/favourite/Semeru.jpg",
    'title': "Gunung Semeru",
    'location': "Lumajang, Jawa Timur",
  },
  {
    'image': "assets/images/favourite/GlagahArum.jpg",
    'title': "Glagah Arum",
    'location': "Lumajang, Jawa Timur",
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

class GridAll extends StatelessWidget {
  const GridAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: abuAbu.withOpacity(0.01),
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.all(14),
            child: InkWell(
              onTap: () {
                Get.back();
              },
              child: SvgPicture.asset(
                "assets/icons/ArrowLeft.svg",
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/dashboard/Search.svg",
              ),
            ),
          ],
          centerTitle: true,
          title: const Text(
            "Destinasi",
            style: TextStyle(
              color: hitam,
              fontSize: 20,
              fontWeight: bold,
            ),
          ),
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(
              getHeight(10),
            ),
            child: Column(
              children: [
                // SizedBox(
                //   height: getHeight(20),
                // ),
                Expanded(
                  child: SizedBox(
                    child: AlignedGridView.count(
                      itemCount: listFavourite.length,
                      crossAxisCount: 2,
                      mainAxisSpacing: 6,
                      crossAxisSpacing: 6,
                      itemBuilder: (context, index) {
                        return Container(
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
                                      '${listFavourite[index]['image']}',
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
                                '${listFavourite[index]['title']}',
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
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SvgPicture.asset(
                                      "assets/icons/dashboard/Location.svg"),
                                  Expanded(
                                    child: Text(
                                      '${listFavourite[index]['location']}',
                                      style: const TextStyle(
                                        fontSize: 12,
                                        fontWeight: normal,
                                      ),
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  InkWell(
                                    child: SvgPicture.asset(
                                      "assets/icons/dashboard/Bookmark.svg",
                                      height: 20,
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
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
