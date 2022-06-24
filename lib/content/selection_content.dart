import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiking_app/theme.dart';
import 'package:get/get.dart';

List listUser = [
  {
    'image': "assets/images/profile/ArunaSentana.jpg",
    'name': namaUser,
    'gender': kelaminUser,
  },
  {
    'image': "assets/images/profile/ArunaSentana.jpg",
    'name': namaUser,
    'gender': kelaminUser,
  },
  {
    'image': "assets/images/profile/ArunaSentana.jpg",
    'name': namaUser,
    'gender': kelaminUser,
  },
];

class SelectionContent extends StatelessWidget {
  const SelectionContent({Key? key}) : super(key: key);

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
          centerTitle: true,
          title: const Text(
            "Pilih Ketua",
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
              getHeight(20),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: getHeight(20),
                ),
                Expanded(
                  child: SizedBox(
                    child: ListView.builder(
                      itemCount: listUser.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(
                            bottom: getHeight(10),
                          ),
                          decoration: BoxDecoration(
                            color: hitam.withOpacity(0.05),
                            borderRadius: BorderRadius.circular(14),
                          ),
                          child: ListTile(
                            leading: ClipOval(
                              child: Image.asset(
                                '${listUser[index]['image']}',
                                height: 50,
                                width: 50,
                                fit: BoxFit.fitHeight,
                              ),
                            ),
                            title: Text(
                              '${listUser[index]['name']}',
                              style: const TextStyle(
                                color: hitam,
                                // fontSize: 20,
                                fontWeight: medium,
                              ),
                            ),
                            subtitle: Text(
                              '${listUser[index]['gender']}',
                              style: const TextStyle(
                                color: hitam,
                                // fontSize: 14,
                                fontWeight: light,
                              ),
                            ),
                            trailing: InkWell(
                              onTap: () {},
                              child: Container(
                                height: 32,
                                width: 64,
                                padding: EdgeInsets.all(
                                  getHeight(5),
                                ),
                                decoration: BoxDecoration(
                                  gradient: gradient,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: const Center(
                                  child: Text(
                                    "PILIH",
                                    style: TextStyle(
                                      color: putih,
                                      fontWeight: bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    // ListView.builder(
                    //   return {ListTile(
                    //     leading: Image.asset("name"),
                    //     title: Text('${listUser}'),
                    //   ),}
                    // ),
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
