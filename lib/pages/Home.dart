import 'package:flutter/material.dart';
import 'package:flutter_cash_app/pages/income.dart';
import 'package:flutter_cash_app/pages/expense.dart';
import 'package:flutter_cash_app/pages/category.dart';
import 'package:flutter_cash_app/components.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // get width screen
    final mediaQueryData = MediaQuery.of(context);
    final size = mediaQueryData.size.width;

    return Scaffold(
      appBar: AppBar(
        title: new Text("Flutter Cash App"),
        backgroundColor: Colors.deepOrange,
        elevation: 1.0,
        centerTitle: false,
        actions: <Widget>[
          new IconButton(
              icon: Icon(Icons.add),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => new AlertDialog(
                          title: new Text("Add"),
                          content: new Container(
                            height: 160.0,
                            child: AlertComponent(),
                          ),
                        ));
              })
        ],
      ),
      body: new Stack(
        children: <Widget>[
          Center(
            child: ListTile(
                title: new Icon(
                  Icons.account_balance_wallet,
                  size: 64.0,
                  color: Colors.grey,
                ),
                subtitle: new Padding(
                  padding: EdgeInsets.only(left: size / 3.4),
                  child: new Text(
                    "Waste No Money",
                    style: TextStyle(fontSize: 16.0),
                  ),
                )),
          )
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
