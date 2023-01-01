// import 'package:flutter/material.dart';
//
// class HouseDetailView extends StatefulWidget {
//   const HouseDetailView({Key? key}) : super(key: key);
//
//   @override
//   State<HouseDetailView> createState() => _HouseDetailViewState();
// }
//
// class _HouseDetailViewState extends State<HouseDetailView> {
//   int currentIndex = 0;
//   setIndex(index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     // TabController tabController = TabController(length: 3, vsync: this);
//     final size = MediaQuery.of(context).size;
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           ListTile(
//             title: const Text(
//               'Ruben',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             subtitle: const Text(
//               'Civic View Apartment',
//             ),
//             trailing:
//                 CircleAvatar(child: Image.asset('assets/dashboard/girl.png')),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 15),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 const Text('Discover Best',
//                     style:
//                         TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//                 const Text('Suitable Property',
//                     style:
//                         TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 SingleChildScrollView(
//                   scrollDirection: Axis.horizontal,
//                   child: Row(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10, horizontal: 15),
//                         decoration: const BoxDecoration(
//                             color: Color(0xff1c718e),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),
//                         // height: size.height * 0.05,
//                         // width: size.height * 0.1,
//                         child: const Center(
//                           child: Text(
//                             'House',
//                             style: TextStyle(fontSize: 18, color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10, horizontal: 15),
//                         decoration: const BoxDecoration(
//                             color: Color(0xff1c718e),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),
//                         // height: size.height * 0.05,
//                         // width: size.height * 0.1,
//                         child: const Center(
//                           child: Text(
//                             'Apartment',
//                             style: TextStyle(fontSize: 18, color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10, horizontal: 15),
//                         decoration: const BoxDecoration(
//                             color: Color(0xff1c718e),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),
//                         // height: size.height * 0.05,
//                         // width: size.height * 0.1,
//                         child: const Center(
//                           child: Text(
//                             'Clifton',
//                             style: TextStyle(fontSize: 18, color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10, horizontal: 15),
//                         decoration: const BoxDecoration(
//                             color: Color(0xff1c718e),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),
//                         // height: size.height * 0.05,
//                         // width: size.height * 0.1,
//                         child: const Center(
//                           child: Text(
//                             'Flat',
//                             style: TextStyle(fontSize: 18, color: Colors.white),
//                           ),
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                             vertical: 10, horizontal: 15),
//                         decoration: const BoxDecoration(
//                             color: Color(0xff1c718e),
//                             borderRadius:
//                                 BorderRadius.all(Radius.circular(10))),
//                         // height: size.height * 0.05,
//                         // width: size.height * 0.1,
//                         child: const Center(
//                           child: Text(
//                             'Defence',
//                             style: TextStyle(fontSize: 18, color: Colors.white),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Container(
//                 //   width: double.maxFinite,
//                 //   height: 300,
//                 //   child: TabBar(
//                 //     controller: tabController,
//                 //     tabs: [
//                 //       Container(
//                 //         decoration: const BoxDecoration(
//                 //             color: Color(0xff1c718e),
//                 //             borderRadius:
//                 //                 BorderRadius.all(Radius.circular(10))),
//                 //         padding: const EdgeInsets.symmetric(
//                 //             vertical: 10, horizontal: 15),
//                 //         child: Tab(
//                 //           text:
//                 //               'House,style: TextStyle(fontSize: 18, color: Colors.white)',
//                 //         ),
//                 //       ),
//                 //       Container(
//                 //         decoration: const BoxDecoration(
//                 //             color: Color(0xff1c718e),
//                 //             borderRadius:
//                 //                 BorderRadius.all(Radius.circular(10))),
//                 //         padding: const EdgeInsets.symmetric(
//                 //             vertical: 10, horizontal: 15),
//                 //         child: Tab(
//                 //           text:
//                 //               'House,style: TextStyle(fontSize: 18, color: Colors.white)',
//                 //         ),
//                 //       ),
//                 //       Container(
//                 //         decoration: const BoxDecoration(
//                 //             color: Color(0xff1c718e),
//                 //             borderRadius:
//                 //                 BorderRadius.all(Radius.circular(10))),
//                 //         padding: const EdgeInsets.symmetric(
//                 //             vertical: 10, horizontal: 15),
//                 //         child: Tab(
//                 //           text:
//                 //               'House,style: TextStyle(fontSize: 18, color: Colors.white)',
//                 //         ),
//                 //       ),
//                 //     ],
//                 //   ),
//                 // ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 const Text(
//                   'Best For You',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                 ),
//                 // Container(
//                 //   decoration: const BoxDecoration(
//                 //       color: Color(0xff1c718e),
//                 //       borderRadius: BorderRadius.all(Radius.circular(10))),
//                 //   padding:
//                 //       const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//                 //   child: Tab(
//                 //     text:
//                 //         'House,style: TextStyle(fontSize: 18, color: Colors.white)',
//                 //   ),
//                 // ),
//                 // TabBarView(controller: tabController, children: [
//                 SizedBox(
//                   width: size.width,
//                   child: Image.asset(
//                     'assets/dashboard/house2.png',
//                     // height: 50,
//                   ),
//                 ),
//                 //   SizedBox(
//                 //     width: size.width,
//                 //     child: Image.asset(
//                 //       'assets/dashboard/house1.png',
//                 //       // height: 50,
//                 //     ),
//                 //   ),
//                 //   SizedBox(
//                 //     width: size.width,
//                 //     child: Image.asset(
//                 //       'assets/dashboard/house2.png',
//                 //       // height: 50,
//                 //     ),
//                 //   ),
//                 // ]),
//                 const Text(
//                   'Your Location',
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
//                 ),
//                 const SizedBox(
//                   height: 10,
//                 ),
//                 Container(
//                   decoration: const BoxDecoration(
//                       color: Color(0xffd6e0e9),
//                       borderRadius: BorderRadius.all(Radius.circular(15))),
//                   child: Row(
//                     children: [
//                       Image.asset(
//                         height: size.height * 0.10,
//                         'assets/dashboard/house2.png',
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           const Text(
//                             'Falcon House',
//                             style: TextStyle(
//                                 fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                           const Text(
//                             'House No 20 Block 17',
//                             // style: TextStyle(
//                             //     fontSize: 16, fontWeight: FontWeight.bold),
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 size: 18,
//                                 Icons.cabin,
//                                 color: Colors.yellow.shade700,
//                               ),
//                               const SizedBox(
//                                 width: 5,
//                               ),
//                               const Text(
//                                 'Cabin',
//                                 style: TextStyle(fontSize: 12),
//                               ),
//                               const SizedBox(
//                                 width: 10,
//                               ),
//                               Icon(
//                                 size: 18,
//                                 Icons.account_balance,
//                                 color: Colors.yellow.shade700,
//                               ),
//                               const SizedBox(
//                                 width: 5,
//                               ),
//                               const Text(
//                                 'Balance',
//                                 style: TextStyle(fontSize: 12),
//                               ),
//                               const SizedBox(
//                                 width: 10,
//                               ),
//                               Icon(
//                                 size: 18,
//                                 Icons.car_crash_outlined,
//                                 color: Colors.yellow.shade700,
//                               ),
//                               const SizedBox(
//                                 width: 5,
//                               ),
//                               const Text(
//                                 'Car',
//                                 style: TextStyle(fontSize: 12),
//                               ),
//                               const SizedBox(
//                                 width: 10,
//                               ),
//                             ],
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//         backgroundColor: Color(0xff1c718e),
//         items: <BottomNavigationBarItem>[
//           //       void _onItemTapped(int index) {
//           // setState(() {
//           // _selectedIndex = index;
//           // });
//           // }
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.home,
//               color: currentIndex == 0 ? Colors.white : Colors.black,
//             ),
//             label: 'Home',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.search,
//               color: currentIndex == 0 ? Colors.white : Colors.black,
//             ),
//             label: 'Search',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(
//               Icons.bookmark_border,
//               color: currentIndex == 0 ? Colors.white : Colors.black,
//             ),
//             label: 'Chats',
//           ),
//           // BottomNavigationBarItem(
//           //   icon: Icon(Icons.acc),
//           //   label: 'Chats',
//           // ),
//         ],
//       ),
//     );
//   }
// }
