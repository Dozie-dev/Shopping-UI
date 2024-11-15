import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        //The Appbar beginning the page
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 100,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 250.0, top: 10),
              child: InkWell(
                onTap: () {},
                borderRadius: BorderRadius.circular(20),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(20)),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Image.asset(
                        'icons/menu.png',
                        height: 25,
                        width: 25,
                      ),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 30.0, top: 10),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20)),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.notifications_active_outlined,
                      size: 38,
                    )),
              ),
            ),
          ],
        ),

        //The body of the page
        body: SingleChildScrollView(
          child: Column(
            children: [
              //The search bar
              Padding(
                padding: EdgeInsets.all(25.0),
                child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search,
                            size: 30,
                          ),
                          hintText: "Search...",
                          hintStyle:
                              TextStyle(color: Colors.grey, fontSize: 25),
                          suffixIcon:
                              Row(mainAxisSize: MainAxisSize.min, children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 15.0, bottom: 15),
                              child: VerticalDivider(
                                color: Colors.grey,
                                width: 3,
                                thickness: 2,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Image.asset('icons/list.png'),
                            )
                          ])),
                    )),
              ),

              //--Container after the search
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(23.0),
                    child: Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('images/sneakers.png'),
                              fit: BoxFit.scaleDown,
                              alignment: Alignment(1.8, 0.0)),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 31.0),
                              // ignore: sized_box_for_whitespace
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 20.0, left: 10),
                                child: Container(
                                  height: 180,
                                  width: 180,
                                  child: Column(
                                    children: [
                                      Text(
                                        'Super Sale Discount',
                                        style: TextStyle(
                                            fontSize: 35,
                                            fontWeight: FontWeight.bold,
                                            height: 1.1),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'Up to',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                left: 10.0),
                                            child: Text(
                                              '50%',
                                              style: TextStyle(
                                                  fontSize: 30,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 73.0),
                                        child: Container(
                                          height: 40,
                                          width: 120,
                                          decoration: BoxDecoration(
                                              color: Colors.orange,
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                          child: Center(
                                            child: Text(
                                              'Shop Now',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ),

                  // array of products
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          // Circle Container 1
                          Column(
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                    color: Colors.black,
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage('images/shoes.jpg'),
                                        fit: BoxFit.fill)),
                              ),
                              Text(
                                'Shoes',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),

                          // Circle Container 2
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image:
                                              AssetImage('images/makeup.jpeg'),
                                          fit: BoxFit.fill)),
                                ),
                                Text(
                                  'Beauty',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),

                          // Circle Container 3
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 15.0,
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image:
                                              AssetImage('images/fashion.jpg'),
                                          fit: BoxFit.fill)),
                                ),
                                Text(
                                  'Women',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),

                          // Circle Container 4
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image:
                                              AssetImage('images/jewelry.jpeg'),
                                          fit: BoxFit.fill)),
                                ),
                                Text(
                                  'Jewelry',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),

                          // Circle Container 5
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              children: [
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      shape: BoxShape.circle,
                                      image: DecorationImage(
                                          image: AssetImage('images/menn.jpeg'),
                                          fit: BoxFit.fill)),
                                ),
                                Text(
                                  'Mens',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // Texts
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Special For You',
                          style: TextStyle(
                              fontSize: 26, fontWeight: FontWeight.bold),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Text(
                            'See all',
                            style: TextStyle(fontSize: 15),
                          ),
                        )
                      ],
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  // Containers
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Row(
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(20),
                              image: DecorationImage(
                                  image: AssetImage('images/airpods.png'),
                                  alignment: Alignment(1, -1))),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
