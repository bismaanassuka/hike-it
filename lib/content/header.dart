import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:hiking_app/profile_menu/my_profile.dart';

import 'package:hiking_app/theme.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Get.to(() => const MyProfile());
          },
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: gradient,
            ),
            child: CircleAvatar(
              radius: getHeight(22),
              backgroundColor: Colors.transparent,
              child: CircleAvatar(
                radius: getHeight(20),
                backgroundImage: photoMbake,
              ),
            ),
          ),
        ),
        const Spacer(),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "Now you are in",
              style: TextStyle(fontSize: 12, fontWeight: normal),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              nowLocation,
              style: const TextStyle(fontSize: 16, fontWeight: bold),
            ),
          ],
        ),
        const Spacer(),
        InkWell(
          onTap: () {},
          child: SvgPicture.asset("assets/icons/dashboard/Notification.svg"),
        ),
      ],
    );
  }
}
