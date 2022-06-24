import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiking_app/profile_menu/my_profile.dart';
import 'package:hiking_app/theme.dart';
import 'package:get/get.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({Key? key}) : super(key: key);
  Widget detailUser({
    required String label,
    required String value,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            color: abuAbu,
            fontSize: 12,
            fontWeight: normal,
          ),
        ),
        SizedBox(
          height: getHeight(5),
        ),
        Container(
          padding: EdgeInsets.only(left: getHeight(20)),
          height: getHeight(48),
          decoration: BoxDecoration(
            color: abuAbu.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              value,
              style: const TextStyle(
                color: hitam,
                fontSize: 16,
                fontWeight: normal,
              ),
            ),
          ),
        ),
        SizedBox(
          height: getHeight(20),
        )
      ],
    );
  }

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
            "Edit Profil",
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: gradient,
                  ),
                  child: Center(
                    child: CircleAvatar(
                      radius: 64,
                      backgroundColor: Colors.transparent,
                      child: CircleAvatar(
                        radius: 63.5,
                        backgroundColor: Colors.white,
                        child: InkWell(
                          child: Stack(
                            children: [
                              Center(
                                child: CircleAvatar(
                                  backgroundImage: photoMbake,
                                  radius: getHeight(60),
                                ),
                              ),
                              // Align(
                              //   alignment: Alignment.bottomRight,
                              //   child: Padding(
                              //     padding: EdgeInsets.fromLTRB(
                              //       0,
                              //       0,
                              //       getHeight(5),
                              //       getHeight(5),
                              //     ),
                              //     child: SvgPicture.asset(
                              //       "assets/icons/profile/Edit.svg",
                              //       height: getHeight(32),
                              //     ),
                              //   ),
                              // ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: getHeight(20),
                ),
                detailUser(
                  label: "Nama",
                  value: namaUser,
                ),
                detailUser(
                  label: "Tanggal Lahir",
                  value: ttlUser,
                ),
                detailUser(
                  label: "No. HP",
                  value: hpUser,
                ),
                detailUser(
                  label: "Jenis Kelamin",
                  value: kelaminUser,
                ),
                const Spacer(),
                InkWell(
                  onTap: () {
                    Get.to(() => const MyProfile());
                  },
                  child: Container(
                    height: getHeight(54),
                    decoration: BoxDecoration(
                      gradient: gradient,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Save Profile",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: bold,
                        ),
                      ),
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
