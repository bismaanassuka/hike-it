import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hiking_app/order.dart';
import 'package:hiking_app/theme.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const PsnPemandu());
}

class PsnPemanduController extends GetxController {}

class PsnPemandu extends GetView<PsnPemanduController> {
  const PsnPemandu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: horpadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: getHeight(20),
              ),
              InkWell(
                onTap: () {
                  Get.back();
                },
                child: SizedBox(
                  width: getWidth(22),
                  height: getHeight(22),
                  child: SvgPicture.asset('assets/icons/left.svg'),
                ),
              ),
              SizedBox(
                height: getHeight(25),
              ),
              IntrinsicHeight(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset('assets/images/pemandu/profile.png',
                        height: getHeight(200),
                        fit: BoxFit.contain,
                        alignment: Alignment.centerLeft),
                    SizedBox(
                      width: getWidth(25),
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: getHeight(15),
                          ),
                          Text(
                            namaPemandu,
                            style: TextStyle(
                                color: hitam,
                                fontWeight: bold,
                                fontSize: getWidth(18)),
                          ),
                          SizedBox(
                            height: getHeight(3),
                          ),
                          Text(
                            deskPemandu,
                            style: TextStyle(
                                color: abuAbu,
                                fontWeight: semibold,
                                fontSize: getWidth(16)),
                          ),
                          const Spacer(),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                child: SvgPicture.asset(
                                  'assets/icons/pemandu/email.svg',
                                  width: getWidth(50),
                                  // height: getHeight(50),
                                ),
                              ),
                              SizedBox(
                                width: getWidth(15),
                              ),
                              SizedBox(
                                child: SvgPicture.asset(
                                  'assets/icons/pemandu/phone.svg',
                                  width: getWidth(50),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: getHeight(30),
              ),
              Text(
                tentang,
                style: TextStyle(
                  color: hitam,
                  fontWeight: bold,
                  fontSize: getWidth(16),
                ),
              ),
              SizedBox(
                height: getHeight(3),
              ),
              Text(
                tentangFill,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: abuAbu,
                  fontWeight: medium,
                  fontSize: getWidth(13.5),
                ),
              ),
              SizedBox(
                height: getHeight(20),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: getWidth(24),
                                    child: SvgPicture.asset(
                                        'assets/icons/pemandu/Location.svg'),
                                  ),
                                  SizedBox(
                                    width: getWidth(5),
                                  ),
                                  SizedBox(
                                    child: Text(
                                      alamat,
                                      style: TextStyle(
                                        color: hitam,
                                        fontWeight: bold,
                                        fontSize: getHeight(16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: getHeight(3),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: getWidth(30)),
                                  Expanded(
                                    child: Text(
                                      alamatFill,
                                      textAlign: TextAlign.justify,
                                      style: TextStyle(
                                        color: abuAbu,
                                        fontWeight: medium,
                                        fontSize: getWidth(13.5),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: getHeight(8),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    child: SvgPicture.asset(
                                      'assets/icons/pemandu/Star.svg',
                                      width: getWidth(24),
                                    ),
                                  ),
                                  SizedBox(
                                    width: getWidth(5),
                                  ),
                                  SizedBox(
                                    child: Text(
                                      rating,
                                      style: TextStyle(
                                        color: hitam,
                                        fontWeight: bold,
                                        fontSize: getHeight(16),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: getHeight(3),
                              ),
                              Row(
                                children: [
                                  SizedBox(width: getWidth(30)),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          'assets/icons/pemandu/stars.svg',
                                          width: getWidth(100),
                                        ),
                                        SizedBox(
                                          height: getHeight(3),
                                        ),
                                        Text(
                                          ratingFill,
                                          textAlign: TextAlign.justify,
                                          style: TextStyle(
                                            color: abuAbu,
                                            fontWeight: medium,
                                            fontSize: getHeight(14),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: getWidth(12),
                  ),
                  Image.asset(
                    'assets/images/pemandu/mapsprofile.png',
                    height: getHeight(200),
                  ),
                ],
              ),
              const Spacer(),
              InkWell(
                onTap: () {
                  Get.to(const Order());
                },
                child: Container(
                  width: getWidth(350),
                  height: getHeight(50),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [pink, ungu],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Pesan Pemandu',
                      style: TextStyle(
                        color: putih,
                        fontWeight: bold,
                        fontSize: getWidth(16),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(20),
              )
            ],
          ),
        ),
      ),
    );
  }
}
