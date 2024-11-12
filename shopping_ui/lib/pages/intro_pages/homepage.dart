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
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(20)),
                child: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.menu_rounded,
                      size: 35,
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
                      size: 35,
                    )),
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(10.0),
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
                        //VerticalDivider(color: Colors.grey,),

                        hintText: "Search...",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 25),
                        suffixIcon: Icon(
                          Icons.open_in_browser_rounded,
                          size: 30,
                        )),
                  )),
            )
          ],
        ));
  }
}
