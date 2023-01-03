import 'package:music_app/views/albums_view.dart';
import 'package:music_app/views/artists_view.dart';
import 'package:music_app/views/favourites_view.dart';
import 'package:music_app/views/folders_view.dart';
import 'package:music_app/views/playlists_view.dart';
import 'package:music_app/views/tracks_view.dart';

class MusicFunctions {
  view(String item) {
    if (item == "Favourites") {
      return const FavouritesView();
    } else if (item == "Albums") {
      return const AlbumsView();
    } else if (item == "Artists") {
      return const ArtistsView();
    } else if (item == "Folders") {
      return const FoldersView();
    } else if (item == "Playlists") {
      return const PlaylistsView();
    } else if (item == "Tracks") {
      return const TracksView();
    } else {
      return;
    }
  }
}
