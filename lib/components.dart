import 'package:flutter/material.dart';
import 'package:flutter_cash_app/pages/income.dart';
import 'package:flutter_cash_app/pages/expense.dart';
import 'package:flutter_cash_app/pages/category.dart';

class AlertComponent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new Row(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.attach_money),
            ),
            new Padding(
              padding: EdgeInsets.all(2.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Income()));
                },
                child: new Text("Income"),
              ),
            )
          ],
        ),
        new Row(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.money_off),
            ),
            new Padding(
              padding: EdgeInsets.all(2.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Expense()));
                },
                child: new Text("Expense"),
              ),
            )
          ],
        ),
        new Row(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(4.0),
              child: Icon(Icons.dashboard),
            ),
            new Padding(
              padding: EdgeInsets.all(2.0),
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      new MaterialPageRoute(
                          builder: (context) => new Category()));
                },
                child: new Text("Category"),
              ),
            )
          ],
        ),
      ],
    );
  }
}
