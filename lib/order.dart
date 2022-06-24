import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:hiking_app/theme.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
// import 'package:syncfusion_flutter_datepicker/datepicker.dart';

void main() {
  runApp(const Order());
}

class OrderController extends GetxController {
  static OrderController get to => Get.isRegistered<OrderController>()
      ? Get.find()
      : Get.put(OrderController());
  String pickedDate = '';
}

class Order extends GetView<OrderController> {
  const Order({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SingleChildScrollView(
            child: SafeArea(
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
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: [
                      //     Text(
                      //       anggota,
                      //       style: TextStyle(
                      //         color: hitam,
                      //         fontWeight: medium,
                      //         fontSize: getWidth(16),
                      //       ),
                      //     ),
                      //     const Spacer(),
                      //     InkWell(
                      //       onTap: (() {}),
                      //       child: Container(
                      //         // width: getWidth(80),
                      //         // height: getHeight(22),
                      //         padding: const EdgeInsets.symmetric(
                      //             vertical: 8, horizontal: 12),
                      //         decoration: BoxDecoration(
                      //           color: orange,
                      //           borderRadius: BorderRadius.circular(10),
                      //         ),
                      //         child: Row(
                      //           mainAxisAlignment: MainAxisAlignment.center,
                      //           children: [
                      //             // SvgPicture.asset(
                      //             //   'assets/icons/order/tambah.svg',
                      //             // ),
                      //             const Icon(
                      //               Icons.add,
                      //               size: 16,
                      //               color: orangefont,
                      //             ),
                      //             SizedBox(
                      //               width: getWidth(5),
                      //             ),
                      //             Text(
                      //               'Tambah',
                      //               style: TextStyle(
                      //                 color: orangefont,
                      //                 fontWeight: bold,
                      //                 fontSize: getWidth(12),
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      // SizedBox(height: getHeight(17)),
                      // TextField(
                      //   decoration: InputDecoration(
                      //       isDense: true,
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(16)),
                      //       labelText: 'Nama Lengkap'),
                      // ),
                      // SizedBox(
                      //   height: getHeight(15),
                      // ),
                      // TextField(
                      //   decoration: InputDecoration(
                      //       isDense: true,
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(16)),
                      //       labelText: 'NIK'),
                      // ),
                      // SizedBox(
                      //   height: getHeight(15),
                      // ),
                      // TextField(
                      //   decoration: InputDecoration(
                      //       isDense: true,
                      //       border: OutlineInputBorder(
                      //           borderRadius: BorderRadius.circular(16)),
                      //       labelText: 'No. Telepon'),
                      // ),
                      // SizedBox(
                      //   height: getHeight(20),
                      // ),
                      Center(
                        child: Text(
                          tanggal,
                          style: TextStyle(
                              color: hitam,
                              fontWeight: medium,
                              fontSize: getWidth(18)),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: getHeight(35),
                      ),
                      SfDateRangePicker(
                        // onSelectionChanged: _onSelectionChanged,
                        selectionMode: DateRangePickerSelectionMode.range,
                      ),
                      // SfDateRangePicker(
                      //   selectionMode: DateRangePickerSelectionMode.range,
                      //   // onSelectionChanged: _onSelectionChanged,
                      // ),
                      // Card(
                      //   child: SfDateRangePicker(
                      //     selectionMode: DateRangePickerSelectionMode.range,
                      //     onSelectionChanged: _onSelectionChanged,
                      //   ),
                      // )
                    ],
                  )
                ],
              ),
            )),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: horpadding,
              width: double.infinity,
              height: getHeight(75),
              decoration: BoxDecoration(
                  color: putih,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: shadow.withOpacity(0.5),
                        blurRadius: 50,
                        offset: const Offset(0, -13))
                  ]),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        harga,
                        style: TextStyle(
                            color: hitam,
                            fontWeight: bold,
                            fontSize: getWidth(16)),
                      ),
                      Text(
                        hari,
                        style: TextStyle(
                            color: abuAbu,
                            fontWeight: medium,
                            fontSize: getWidth(13)),
                      )
                    ],
                  ),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Get.to(const Order());
                    },
                    child: Container(
                      width: getWidth(100),
                      height: getHeight(45),
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
                          'Pesan',
                          style: TextStyle(
                            color: putih,
                            fontWeight: bold,
                            fontSize: getWidth(15),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  // void _onSelectionChanged(
  //     DateRangePickerSelectionChangedArgs dateRangePickerSelectionChangedArgs) {
  //   OrderController.to.pickedDate =
  //       dateRangePickerSelectionChangedArgs.value.toString();
  //   // print(dateRangePickerSelectionChangedArgs.value);
  // }
}
