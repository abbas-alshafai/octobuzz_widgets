import 'package:flutter/material.dart';
import '../themes/measures.dart';

/*
  TODO : remove this page to widgets
  this page is just to show different fonts and text themes on screen
 */
class FontsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [


        Text('Lorem!',
          style: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(height: vSpace,),

        Text('Lorem ipsum',
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(height: vSpace,),

        Text('Lorem ipsum',
          style: Theme.of(context).textTheme.headline3,
        ),
        SizedBox(height: vSpace,),

        Text('Lorem ipsum dolor sit',
          style: Theme.of(context).textTheme.headline4,
        ),
        SizedBox(height: vSpace,),

        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
          style: Theme.of(context).textTheme.headline5,
        ),
        SizedBox(height: vSpace,),

        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.Curabitur',
          style: Theme.of(context).textTheme.headline6,
        ),
        SizedBox(height: vSpace,),

        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.Curabitur eget justo non lacus ullamcorper rhoncus.',
          style: Theme.of(context).textTheme.subtitle1,
        ),
        SizedBox(height: vSpace,),

        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.Curabitur eget justo non lacus ullamcorper rhoncus.',
          style: Theme.of(context).textTheme.subtitle2,
        ),
        SizedBox(height: vSpace,),

        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.Curabitur eget justo non lacus ullamcorper rhoncus.',
          style: Theme.of(context).textTheme.bodyText1,
        ),
        SizedBox(height: vSpace,),

        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.Curabitur eget justo non lacus ullamcorper rhoncus.',
          style: Theme.of(context).textTheme.bodyText2,
        ),
        SizedBox(height: vSpace,),

        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.Curabitur eget justo non lacus ullamcorper rhoncus.',
          style: Theme.of(context).textTheme.button,
        ),
        SizedBox(height: vSpace,),

        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.Curabitur eget justo non lacus ullamcorper rhoncus.',
          style: Theme.of(context).textTheme.overline,
        ),
        SizedBox(height: vSpace,),

        Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit.Curabitur eget justo non lacus ullamcorper rhoncus.',
          style: Theme.of(context).textTheme.caption,
        ),
        SizedBox(height: vSpace,),
      ],
    );
  }
}
