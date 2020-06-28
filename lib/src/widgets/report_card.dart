import 'package:flutter/material.dart';

import '../models/report.dart';
import '../styles.dart';

class ReportCard extends StatelessWidget {
  final Report report;

  ReportCard(this.report);

  Widget build(context) {
    return AspectRatio(
      aspectRatio: 13 / 15,
      child: Card(
        color: Styles.primaryColorAlt,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: ClipRect(
                child: FittedBox(
                  child: Image.asset(report.imagePath,),
                  fit: BoxFit.fill
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          report.title,
                          style: Styles.reportCardTitle,
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                              '${report.karma}',
                              style: Styles.reportCardSynopsis,
                            ),
                            SizedBox(width: 5.0),
                            Text('karma'),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.explore),
                          onPressed: () {
                            // TODO: Nav to details.
                            print('Card onPressed not yet implemented');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
