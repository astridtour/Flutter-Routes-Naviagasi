import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(new MaterialApp(
    home: new PageOne(),
    title: "Test ProbotDev",
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => new PageOne(),
      '/help': (BuildContext context) => new PageTwo(),
      '/create': (BuildContext context) => new PageThree(),
    },
  ));
}

class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue[900],
        title: new Text("Create"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.help, color: Colors.white),
            onPressed: () {
              Navigator.pushNamed(context, '/help');
            },
          ),
          FloatingActionButton(
            child: Text("Next"),
            onPressed: () {
              Navigator.pushNamed(context, '/create');
            },
          ),
        ],
      ),
      body: new Center(
        child: new TextField(
          keyboardType: TextInputType.multiline,
          maxLines: null,
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Help"),
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam pulvinar luctus sem, eget porta orci. Maecenas molestie dui id diam feugiat, eu tincidunt mauris aliquam. Duis commodo vitae ligula et interdum. Maecenas faucibus mattis imperdiet. In rhoncus ac ligula id ultricies. :",
              style: new TextStyle(fontFamily: "serif", fontSize: 30.0),
            ),
          ],
        ),
      ),
    );
  }
}

class PageThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green[400],
        title: new Text("Create"),
        actions: <Widget>[
          FloatingActionButton(
            child: Text("Login"),
            onPressed: null,
          ),
        ],
      ),
      body: new Container(
        child: Column(
          children: <Widget>[
            nameField(),
            emailField(),
            passwordField(),
            registerButton(),
          ],
        ),
      ),
    );
  }
}

Widget nameField() {
  return TextFormField(
    decoration: InputDecoration(labelText: 'Nama Lengkap'),
  );
}

Widget emailField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration:
        InputDecoration(labelText: 'Email', hintText: 'astrid@example.com'),
  );
}

Widget passwordField() {
  return TextFormField(
    obscureText: true,
    decoration:
        InputDecoration(hintText: 'Enter Password', labelText: 'Password'),
  );
}


Widget registerButton(){
  return RaisedButton(
    color: Colors.blue[700],
    onPressed: null,

    child: Text("Create Account"),
  );
}