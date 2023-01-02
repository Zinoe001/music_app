import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> item = [
      "Favourites",
      "Playlists",
      "Tracks",
      "Albums",
      "Artisits",
      "Folders"
    ];
    double size;
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            const SizedBox(
              height: 48,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: const [
                  Text(
                    "SAMSUNG",
                    style: TextStyle(color: Colors.white),
                  ),
                  SizedBox(width: 5),
                  Text(
                    "Music",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Icon(Icons.search_rounded, color: Colors.white),
                  SizedBox(width: 5),
                  Icon(Icons.more_vert_rounded, color: Colors.white),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: item.length,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8, vertical: 10),
                          child: Text(
                            item[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      )),
            ),
            Expanded(
              child: Container(
                // height: ,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Text("where are you"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
