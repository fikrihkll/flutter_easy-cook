import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:easy_cook/features/presentation/routes/route.dart' as route ;

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text('Detail Page. Hello World'),
            OutlinedButton(onPressed: (){
              Navigator.pushNamed(context, route.homePage);
            }, child: Text('Home Page'))
          ],
        ),
      ),
    );
  }
}
