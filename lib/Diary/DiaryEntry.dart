import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:diversion_flutter_new/MainPage/Elements/appbar.dart';


class NewEntryDialog extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text("New Diary Entry"),
      content: Text("Would you like to make a new Diary Entry?"),
      actions: <Widget>[
        FlatButton(
          onPressed: () {Navigator.of(context).pop();},
          child: Text("Cancel"),
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => EntryPage()),
            );
          },
          child: Text("Confirm"),
        ),
      ],
    );
  }
}

class EntryPage extends StatefulWidget{
  EntryPagy createState() => EntryPagy();
}

class EntryPagy extends State<EntryPage>{

  String EntryTitle;
  String JournalEntry;
  int currentMood = 1;
  double nom = 75;

  String image1 = 'Images/Emoticons/1F62D_color-grayscale.png';
  String image2 = 'Images/Emoticons/1F641_color-grayscale.png';
  String image3 = 'Images/Emoticons/1F610_color-grayscale.png';
  String image4 = 'Images/Emoticons/1F603_color-grayscale.png';
  String image5 = 'Images/Emoticons/1F601_color-grayscale.png';


  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopBar(true, "Diary Entry"),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "   Title",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        setState(() {
                          EntryTitle = value;
                        });
                        return 'Please enter some text';

                      }
                      return null;
                    },
                  ),
                ),
                //Bellow Emoticons are from an open source project
                //https://openmoji.org/library/

                Text("What's your mood today?",
                    style: TextStyle(fontSize: 22.0,)),
                Row(

                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[


                    Container(
                        width: 75,
                        height: 75,
                        child: ConstrainedBox(
                            constraints: BoxConstraints.expand(),
                            child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    currentMood = 1;
                                    image1 = 'Images/Emoticons/1F62D_color.png';
                                    image2 = 'Images/Emoticons/1F641_color-grayscale.png';
                                    image3 = 'Images/Emoticons/1F610_color-grayscale.png';
                                    image4 = 'Images/Emoticons/1F603_color-grayscale.png';
                                    image5 = 'Images/Emoticons/1F601_color-grayscale.png';

                                  });
                                },
                                padding: EdgeInsets.all(0.0),
                                child: Image.asset(image1)
                            )
                        )
                    ),


                    Container(
                        width: 75,
                        height: 75,
                        child: ConstrainedBox(
                            constraints: BoxConstraints.expand(),
                            child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    currentMood = 1;
                                    image1 = 'Images/Emoticons/1F62D_color-grayscale.png';
                                    image2 = 'Images/Emoticons/1F641_color.png';
                                    image3 = 'Images/Emoticons/1F610_color-grayscale.png';
                                    image4 = 'Images/Emoticons/1F603_color-grayscale.png';
                                    image5 = 'Images/Emoticons/1F601_color-grayscale.png';

                                  });
                                },
                                padding: EdgeInsets.all(0.0),
                                child: Image.asset(image2)
                            )
                        )
                    ),


                    Container(
                        width: 75,
                        height: 75,
                        child: ConstrainedBox(
                            constraints: BoxConstraints.expand(),
                            child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    currentMood = 1;
                                    image1 = 'Images/Emoticons/1F62D_color-grayscale.png';
                                    image2 = 'Images/Emoticons/1F641_color-grayscale.png';
                                    image3 = 'Images/Emoticons/1F610_color.png';
                                    image4 = 'Images/Emoticons/1F603_color-grayscale.png';
                                    image5 = 'Images/Emoticons/1F601_color-grayscale.png';

                                  });
                                },
                                padding: EdgeInsets.all(0.0),
                                child: Image.asset(image3)
                            )
                        )
                    ),



                    Container(
                        width: 75,
                        height: 75,
                        child: ConstrainedBox(
                            constraints: BoxConstraints.expand(),
                            child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    currentMood = 1;
                                    image1 = 'Images/Emoticons/1F62D_color-grayscale.png';
                                    image2 = 'Images/Emoticons/1F641_color-grayscale.png';
                                    image3 = 'Images/Emoticons/1F610_color-grayscale.png';
                                    image4 = 'Images/Emoticons/1F603_color.png';
                                    image5 = 'Images/Emoticons/1F601_color-grayscale.png';

                                  });
                                },
                                padding: EdgeInsets.all(0.0),
                                child: Image.asset(image4)
                            )
                        )
                    ),


                    Container(
                        width: 75,
                        height: 75,
                        child: ConstrainedBox(
                            constraints: BoxConstraints.expand(),
                            child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    currentMood = 1;
                                    image1 = 'Images/Emoticons/1F62D_color-grayscale.png';
                                    image2 = 'Images/Emoticons/1F641_color-grayscale.png';
                                    image3 = 'Images/Emoticons/1F610_color-grayscale.png';
                                    image4 = 'Images/Emoticons/1F603_color-grayscale.png';
                                    image5 = 'Images/Emoticons/1F601_color.png';

                                  });
                                },
                                padding: EdgeInsets.all(0.0),
                                child: Image.asset(image5)
                            )
                        )
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextFormField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 6,
                    decoration: InputDecoration(
                      hintText: "   Journal Entry",
                    ),
                    validator: (value) {
                      if (value.isEmpty) {
                        JournalEntry = value;
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
                Container(
                  width: 100,
                  child: FlatButton(
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.pop(context);
                        passToFireBase(EntryTitle,JournalEntry,currentMood);
                      }
                    },
                    child: Text("Done"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}




void passToFireBase (String title, String entry, int rating) {


  var date = new DateTime.now().toString();

  var dateParse = DateTime.parse(date);

  var formattedDate = "${dateParse.day}-${dateParse.month}-${dateParse.year}";

  String DataDate = formattedDate.toString();

  //command here

}