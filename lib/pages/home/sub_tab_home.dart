import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: HomeSubTab(),
    ));

class HomeSubTab extends StatefulWidget {
  @override
  _HomeSubTabState createState() => _HomeSubTabState();
}

_buildSlider(String slide) {
  return FadeInImage(
    image: NetworkImage(slide),
    placeholder: AssetImage('assets/placeholder.jpg'),
    height: 222.0,
    fit: BoxFit.cover,
  );
}

item() => SizedBox(
      height: 148.0,
      child: new ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemExtent: 100.0,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              FadeInImage(
                image: NetworkImage(
                    'https://lh3.googleusercontent.com/5uhO78-Ret4hiPiZYtA63DPs93yHEGxDOOZkKHiDQoMA9J004WOqvFJHxMCeLG8iyg=s360'),
                placeholder: AssetImage('assets/x.jpg'),
                height: 80.0,
                width: 80.0,
                fit: BoxFit.cover,
              ),
              SizedBox(height: 10.0),
              Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 5,
                    child: Row(
                      children: <Widget>[
                        Flexible(
                            child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Puzzle Glowendasda  : Britonsdfsdfsdfsm s sdfsdfsd',
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(fontSize: 12.0),
                            ),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text(
                              '26 MB',
                              style: TextStyle(fontSize: 12.0),
                            )
                          ],
                        )),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: IconButton(
                      icon: Icon(
                        Icons.more_vert,
                        size: 16.0,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );

card() => Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(2.0))),
      child: Container(
        padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 10.0),
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "New + updated Games",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54),
                ),
                Text(
                  "MORE",
                  style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Padding(padding: EdgeInsets.only(left: 15.0), child: item()),
        ]),
      ),
    );

class _HomeSubTabState extends State<HomeSubTab> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(5.0),
      itemCount: 4,
      itemBuilder: (context, index) {
        return card();
      },
    );
  }
}
