import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hiking_app/content/selection_content.dart';
// import 'package:hiking_app/profile_menu/my_profile.dart';
// import 'package:hiking_app/sign/sign_in.dart';
import 'package:hiking_app/theme.dart';
import 'package:get/get.dart';

class OrderContent extends StatelessWidget {
  const OrderContent({Key? key}) : super(key: key);
  Widget menuButton({
    required String icon,
    required String title,
  }) {
    return Container(
      // margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: hitam.withOpacity(0.05),
        borderRadius: BorderRadius.circular(14),
      ),
      child: ListTile(
        leading: Container(
          width: getHeight(40),
          height: getHeight(40),
          padding: EdgeInsets.all(
            getHeight(8),
          ),
          decoration: const BoxDecoration(
            color: putih,
            shape: BoxShape.circle,
          ),
          child: SvgPicture.asset(icon),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: medium,
          ),
        ),
        trailing: SvgPicture.asset(
          "assets/icons/profile/ArrowRight.svg",
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        SizedBox(
          height: getHeight(20),
        ),
        ExpansionTile(
          leading: Container(
            width: getHeight(36),
            height: getHeight(36),
            padding: EdgeInsets.all(
              getHeight(8),
            ),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              "assets/icons/dashboard/Document.svg",
            ),
          ),
          title: const Text(
            "Ongoing Orders",
            style: TextStyle(
              color: hitam,
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
          children: [
            Container(
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
                    "assets/images/profile/ArunaSentana.jpg",
                    height: 50,
                    width: 50,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                title: Text(
                  namaUser,
                  style: const TextStyle(
                    color: hitam,
                    // fontSize: 20,
                    fontWeight: medium,
                  ),
                ),
                subtitle: const Text(
                  location,
                  style: TextStyle(
                    color: hitam,
                    // fontSize: 14,
                    fontWeight: light,
                  ),
                ),
                trailing: InkWell(
                  onTap: () {
                    Get.to(() => const SelectionContent());
                  },
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
                        "Detail",
                        style: TextStyle(
                          color: putih,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const Divider(),
        ExpansionTile(
          leading: Container(
            width: getHeight(36),
            height: getHeight(36),
            padding: EdgeInsets.all(
              getHeight(8),
            ),
            decoration: const BoxDecoration(
              color: Colors.transparent,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(
              "assets/icons/dashboard/Document.svg",
            ),
          ),
          title: const Text(
            "Orders History",
            style: TextStyle(
              color: hitam,
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
          children: [
            Container(
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
                    "assets/images/profile/ArunaSentana.jpg",
                    height: 50,
                    width: 50,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                title: Text(
                  namaUser,
                  style: const TextStyle(
                    color: hitam,
                    // fontSize: 20,
                    fontWeight: medium,
                  ),
                ),
                subtitle: const Text(
                  location,
                  style: TextStyle(
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
                        "Detail",
                        style: TextStyle(
                          color: putih,
                          fontWeight: bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
