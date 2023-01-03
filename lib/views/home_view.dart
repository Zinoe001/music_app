import 'package:flutter/material.dart';
import 'package:music_app/utils/functions.dart';
import 'package:music_app/views/favourites_view.dart';
// import 'package:music_app/views/albums_view.dart';
// import 'package:music_app/views/artists_view.dart';
// import 'package:music_app/views/favourites_view.dart';
// import 'package:music_app/views/folders_view.dart';
// import 'package:music_app/views/playlists_view.dart';
// import 'package:music_app/views/tracks_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  MusicFunctions functions = MusicFunctions();
  List<String> musicFolders = [
    "Favourites",
    "Playlists",
    "Tracks",
    "Albums",
    "Artists",
    "Folders"
  ];
  late int selected = 0;
  late String item = "Favourites";
  @override
  Widget build(BuildContext context) {
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
                  itemCount: musicFolders.length,
                  itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 10),
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              selected = index;
                              item = musicFolders[index];
                            });
                          },
                          child: Text(
                            musicFolders[index],
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: selected == index ? 18 : 14,
                              fontWeight: selected == index
                                  ? FontWeight.w700
                                  : FontWeight.w500,
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
                child: functions.view(item),
                // Column(
                //   children: [
                //     Text("where are you"),
                //   ],
                // ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
