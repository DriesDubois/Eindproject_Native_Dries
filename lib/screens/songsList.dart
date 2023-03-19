import 'package:flutter/material.dart';
import '../utils/data.dart';


class SongList extends StatefulWidget {
  @override
  State createState() => _SongListState();
}

class _SongListState extends State<SongList> {


  @override
  Widget build(BuildContext context) => ListView.builder(
      itemCount: songs.length,
      itemBuilder: (BuildContext context, int index) {
        return ListTile(
          leading: Image.asset(songs[index].imageAsset),
          title: Text(songs[index].title),
          subtitle: Text("${songs[index].artist} - ${songs[index].album}"),
          // add any other properties of your song class here
        );
      },
    );



}
