import 'package:flutter/material.dart';

class See_Container extends StatelessWidget {
  const See_Container({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Container(
        height: 120,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: Colors.green[50],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset(
                  'images/salad.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 25),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.indigo[200]),
                          children: const <TextSpan>[
                            TextSpan(text: "You have 12 recipes that\n"),
                            TextSpan(text: "you haven't tried yet"),
                          ]),
                    ),
                  ),
                  const SizedBox(height: 10,),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, 'see_all');
                    },
                    child: const Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        decoration: TextDecoration.underline
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}