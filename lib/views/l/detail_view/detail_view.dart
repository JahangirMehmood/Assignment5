import 'package:e_commerce/views/l/house_detail_view/house2_detail_view.dart';
import 'package:flutter/material.dart';

class DetailView extends StatelessWidget {
  const DetailView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Detail',
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                  Container(
                    height: 50,
                    width: 50,
                    color: const Color(0xffd6e0e9),
                    child: Center(
                      child: IconButton(
                        icon: const Center(child: Icon(Icons.arrow_back_ios)),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Image.asset(
                'assets/dashboard/house1.png',
                // height: 50,
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        'CRAFTSMAN HOUSE',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 22),
                      ),
                      Text(
                        '11-F New Karachi Godhra Colony',
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 18),
                      ),
                    ],
                  ),
                  Container(
                    height: 50,
                    width: 50,
                    color: const Color(0xffd6e0e9),
                    child: Center(
                      child: IconButton(
                        icon:
                            const Center(child: Icon(Icons.ad_units_outlined)),
                        onPressed: () {},
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.cabin,
                    color: Colors.yellow.shade700,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('Cabin'),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.account_balance,
                    color: Colors.yellow.shade700,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('Balance'),
                  const SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.car_crash_outlined,
                    color: Colors.yellow.shade700,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text('Car'),
                  const SizedBox(
                    width: 10,
                  ),
                ],
              ),
              ListTile(
                leading: CircleAvatar(
                    child: Image.asset('assets/dashboard/girl.png')),
                title: const Text(
                  'Ruben',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                subtitle: const Text(
                  'Civic View Apartment',
                ),
                trailing: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    color: Color(0xff1c718e),
                  ),
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(
                          Icons.call,
                          color: Colors.white,
                        ),
                        Text(
                          'Call',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              const Text(
                  'In descriptive writing, the author does not just tell the reader what was seen, '
                  'felt, tested, smelled, or heard. Rather, the author describes something from their'
                  ' own experience and, through careful choice of words'),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Gallery',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset(
                      'assets/dashboard/room.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/dashboard/room.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/dashboard/room.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/dashboard/room.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/dashboard/room.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/dashboard/room.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/dashboard/room.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/dashboard/room.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/dashboard/room.png',
                      height: 60,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset(
                      'assets/dashboard/room.png',
                      height: 60,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                'Price',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    '9000000',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HouseDetailView2()),
                      );
                    },
                    child: Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5)),
                          color: Color(0xff1c718e),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.only(
                              left: 20, right: 20, top: 10, bottom: 10),
                          child: Text(
                            'BUY NOW',
                            style: TextStyle(color: Colors.white),
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
