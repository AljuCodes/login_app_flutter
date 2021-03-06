import 'package:flutter/material.dart';

class QuoteTiles extends StatelessWidget {
  final String name;
  final String quote;
  final String imgUrl;
  final String role;

  const QuoteTiles(
      {Key? key,
      required this.name,
      required this.quote,
      required this.imgUrl,
      required this.role})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(spreadRadius: 2.0, color: Colors.grey.shade50),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ListTile(
              // dense: true,
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: FadeInImage(
                  image: NetworkImage(
                    imgUrl,
                  ),
                  placeholder: const AssetImage('assets/images/elon.jpg'),
                ),
              ),

              title: Text(
                "\"$quote\"",
                style: const TextStyle(
                  fontSize: 18.0,
                ),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                        fontSize: 14.0,
                        color: Colors.black,
                        fontFamily: 'Lato',
                        fontWeight: FontWeight.normal),
                  ),
                  Text(role),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: const Divider(
                  thickness: 2,
                ))
          ],
        ));
  }
}
