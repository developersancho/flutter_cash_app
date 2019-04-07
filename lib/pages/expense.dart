import 'package:flutter/material.dart';
import 'package:flutter_cash_app/components.dart';
import 'package:flutter_cash_app/pages/Home.dart';

class Expense extends StatefulWidget {
  @override
  _ExpenseState createState() => _ExpenseState();
}

class _ExpenseState extends State<Expense> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text("Expense"),
        backgroundColor: Colors.deepOrange,
        elevation: 1.0,
        centerTitle: false,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.home), onPressed: (){
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => new Home()));
          }),
          new IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => new AlertDialog(
                          title: new Text("Add"),
                          content: new Container(
                            height: 160.0,
                            child: new AlertComponent(),
                          ),
                        ));
              })
        ],
      ),
      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Balance: "),
                subtitle: new Text("\$720"),
              ),
            ),
            Expanded(
              child: ListTile(
                title: new Text("Expense: "),
                subtitle: new Text(
                  "\$230",
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
            Expanded(
                child: new IconButton(
                    icon: Icon(
                      Icons.remove_red_eye,
                      color: Colors.deepOrange,
                    ),
                    onPressed: () {}))
          ],
        ),
      ),
    );
  }
}
