import 'package:delivery_app1/controllers/location_controller.dart';
import 'package:delivery_app1/utils/colors.dart';
import 'package:delivery_app1/utils/dimensions.dart';
import 'package:delivery_app1/widgets/Big_text.dart';
import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class AddAddressPage extends StatefulWidget {
//   const AddAddressPage({Key? key}) : super(key: key);
//
//   @override
//   State<AddAddressPage> createState() => _AddAddressPageState();
// }

// class _AddAddressPageState extends State<AddAddressPage> {
  // TextEditingController _addressController = TextEditingController();
  // final TextEditingController _contactPersonName = TextEditingController();
  // final TextEditingController _contactPersonNumber = TextEditingController();
  // CameraPosition _cameraPosition =
  //     CameraPosition(target: LatLng(45.51563, -122.677433), zoom: 17);
  //  LatLng _initialPosition=LatLng(45.51563, -122.677433);

  // @override
  // initState() {
  //   super.initState();
  //   if (Get.find<LocationController>().addressList.isNotEmpty) {
  //     _cameraPosition = CameraPosition(
  //         target: LatLng(
  //             double.parse(
  //                 Get.find<LocationController>().getAddress['latitude']),
  //             double.parse(
  //                 Get.find<LocationController>().getAddress['longitude'])));
  //     _initialPosition = LatLng(
  //         double.parse(Get.find<LocationController>().getAddress['latitude']),
  //         double.parse(Get.find<LocationController>().getAddress['longitude']));
  //   }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: BigText(
//           text: 'Address page',
//           color: Colors.white,
//         ),
//         backgroundColor: AppColors.mainColor,
//       ),
//       body: Column(
//         children: [
//           Container(margin:EdgeInsets.only(left: 5,right: 5,top: 5) ,
//             height: Dimensions.height30*5,
//             width: MediaQuery.of(context).size.width,
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(5),
//                 border: Border.all(
//                     width: 2, color: Theme.of(context).primaryColor)),child: Stack(children: [GoogleMap(initialCameraPosition: CameraPosition(target: _initialPosition,zoom: 17))],),
//           )
//         ],
//       ),
//     );
//   }
// }
