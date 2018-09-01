import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  ItemWidget(this.title, this.size);

  final String title;
  final String size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
                              title,
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
  }
}
