import 'package:flutter/material.dart';

class HouseDetailView2 extends StatefulWidget {
  const HouseDetailView2({Key? key}) : super(key: key);

  @override
  State<HouseDetailView2> createState() => _HouseDetailView2State();
}

class _HouseDetailView2State extends State<HouseDetailView2> {
  List<String> items = [
    'Home',
    'Apartment',
    'Clifton',
    'Defence',
    'Flat',
  ];
  List<Image> images = [
    Image.asset(
      'assets/dashboard/house2.png',
    ),
    Image.asset(
      'assets/dashboard/house1.png',
    ),
    Image.asset(
      'assets/dashboard/house2.png',
    ),
    Image.asset(
      'assets/dashboard/house1.png',
    ),
    Image.asset(
      'assets/dashboard/house2.png',
    ),
  ];
  int currentIndex1 = 0;
  int currentIndex = 0;
  setIndex(index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TabController tabController = TabController(length: 3, vsync: this);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 35,
            ),
            ListTile(
              title: const Text(
                'Ruben',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: const Text(
                'Civic View Apartment',
              ),
              trailing:
                  CircleAvatar(child: Image.asset('assets/dashboard/girl.png')),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Discover Best',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  const Text('Suitable Property',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: items.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                currentIndex1 = index;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: currentIndex1 == index
                                      ? Color(0xff1c718e)
                                      : Color(0xffd6e0e9),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10))),
                              margin: const EdgeInsets.all(5),
                              padding: const EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 15),
                              child: Text(
                                items[index],
                                style: TextStyle(
                                  fontSize: 18,
                                  color: currentIndex1 == index
                                      ? Colors.white
                                      : Colors.black,
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Best For You',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  // Container(
                  //   height: 500,
                  //   child: Image.asset('images[currentIndex1]'),
                  // ),
                  SizedBox(
                    width: size.width,
                    child: Image.asset(
                      'assets/dashboard/house2.png',
                      // height: 50,
                    ),
                  ),
                  const Text(
                    'Your Location',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color(0xffd6e0e9),
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: Row(
                      children: [
                        Image.asset(
                          height: size.height * 0.10,
                          'assets/dashboard/house2.png',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Falcon House',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'House No 20 Block 17',
                              // style: TextStyle(
                              //     fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                Icon(
                                  size: 18,
                                  Icons.cabin,
                                  color: Colors.yellow.shade700,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Cabin',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  size: 18,
                                  Icons.account_balance,
                                  color: Colors.yellow.shade700,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Balance',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  size: 18,
                                  Icons.car_crash_outlined,
                                  color: Colors.yellow.shade700,
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  'Car',
                                  style: TextStyle(fontSize: 12),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff1c718e),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: currentIndex == 0 ? Colors.white : Colors.black,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: currentIndex == 0 ? Colors.white : Colors.black,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.bookmark_border,
              color: currentIndex == 0 ? Colors.white : Colors.black,
            ),
            label: 'Chats',
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.acc),
          //   label: 'Chats',
          // ),
        ],
      ),
    );
  }
}
