import 'package:flutter/material.dart';
import 'package:list_view/screens/note_details.dart';

class NoteList extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return NoteListState();
  }
}

class NoteListState extends State<NoteList> {
  int count = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Note"),
        ),
        body: getNoteListView(),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              debugPrint("FAB pressed");
              NavigateToNoteDetails();
            },
            child: Icon(Icons.add)));
  }

  void NavigateToNoteDetails() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => NoteDetails(),
      ),
    );
  }

  Widget getNoteListView() {
    return ListView.builder(
        itemCount: count,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            color: Colors.white,
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.yellow,
                child: Icon(Icons.keyboard_arrow_right),
              ),
              title: Text("Dummy title",
                  style: Theme.of(context).textTheme.headline6),
              subtitle: Text("Another title"),
              onTap: () {
                debugPrint("item $index tapped");
              },
            ),
          );
        });
  }
}
