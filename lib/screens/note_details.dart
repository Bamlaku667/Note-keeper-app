import 'package:flutter/material.dart';

class NoteDetails extends StatefulWidget {
  String title;
   NoteDetails({Key? key, required this.title}) : super(key: key);

  @override
  State<NoteDetails> createState() => _NoteDetailsState();
}

class _NoteDetailsState extends State<NoteDetails> {
  
  TextEditingController _titleController = TextEditingController();
  

  static var _priorities = ['high', 'low' , 'medium '];
  @override
  Widget build(BuildContext context) {

    var  textStyle = Theme.of(context).textTheme.titleMedium;
    
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              moveToLastScreen();
            },
            icon: Icon(Icons.arrow_back)
          ),
          title: Text(widget.title),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [
              ListTile(
                title: DropdownButton(
                  items: _priorities.map((String dropDownStrinItem) {
                    return DropdownMenuItem<String>(
                        child: Text(dropDownStrinItem),
                        value: dropDownStrinItem);
                  }).toList(),
    
                  style: textStyle, 
                  value: 'low',
                  onChanged: (userSelectedValue) {
                    setState(() {
                      debugPrint('user selected $userSelectedValue');
                    });
                  }
                ),
              ),
              TextField(
                onChanged: (value) {
                  debugPrint("text $value is entered");
                },
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: "title",
                  labelText: "title",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                )
              ),
    
              SizedBox(height: 10),
    
    
              TextField(
                onChanged: (value) {
                  debugPrint("text $value is entered");
                },
                controller: _titleController,
                decoration: InputDecoration(
                  hintText: "Enter description",
                  labelText: "Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0)
                  ),
                )
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Save"),
                      ),
                    ),
    
                    Container(width: 10,),
                    
                      Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text("Delete"),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }

  void moveToLastScreen() {
    Navigator.pop(context);
  }
}
