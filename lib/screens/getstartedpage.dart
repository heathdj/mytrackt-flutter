import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: HexColor('#deedfc'),
        child: Column(
          children: [
            Spacer(),
            Icon(
              Icons.check_box_outlined,
              size: 60,
              color: Colors.black45,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "MyTrackt The Travel Checklist",
              style: Theme.of(context).textTheme.headline3,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Travel easier with a checklist from the Bald Traveler",
              style: TextStyle(
                  color: Colors.black26,
                  fontSize: 29,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            TextButton.icon(
                style: TextButton.styleFrom(
                    primary: Colors.white,
                    backgroundColor: Colors.blueAccent,
                    textStyle: TextStyle(fontSize: 18)),
                onPressed: () {},
                icon: Icon(Icons.login_rounded),
                label: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Text('Sign in to get started'),
                )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
