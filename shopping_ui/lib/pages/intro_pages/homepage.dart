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
        body: Column(
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
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
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
            
          ],
        ));
  }
}
