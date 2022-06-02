import 'dart:io';


import '../themes/measures.dart';

import '../constants/x_icons.dart';

import '../themes/theme_factory.dart';
import 'package:flutter/material.dart';

class XAttachImage extends StatelessWidget {

  final bool isCircle;
  final File? image;
  final VoidCallback? onPressed;
  final Color? backgroundColor;
  final Function? onCamera;
  final Function? onAttachFile;
  final String? cameraText;
  final String? galleryText;

  const XAttachImage({
    Key? key,
    this.isCircle = true,
    this.image,
    this.onPressed,
    this.backgroundColor,
    this.onCamera,
    this.onAttachFile,
    this.cameraText,
    this.galleryText,
  })
      : super(key: key);


  @override
  Widget build(BuildContext context) {

    Color? color = backgroundColor
        ?? Theme.of(context).primaryColor.withOpacity(OpacityRatios.normal);

    Widget content = image == null
        ? Icon(
          XIcons.camera,
          color: ThemeFactory.instance.getTheme().themeData.backgroundColor,
          size: 50,
        )
        : Image.file(
          image!,
          // fit: BoxFit.fill,
        );


    return GestureDetector(

      onTap: onPressed ?? () {},


      //   onTap: onPressed ?? () {
      //   showModalBottomSheet(
      //     context: context,
      //     builder: (context) {
      //       return Container(
      //         color: Color(0xFF737373),
      //         height: 130,
      //         child: SafeArea(
      //           child: Container(
      //             decoration: BoxDecoration(
      //               // color: ThemeFactory.instance.getTheme().theme.canvasColor,
      //               gradient: LinearGradient(
      //                 colors: [
      //                   ThemeFactory.instance.getTheme().gradientOne,
      //                   ThemeFactory.instance.getTheme().gradientTwo,
      //                 ],
      //                 begin: Alignment.topLeft,
      //                 end: Alignment.bottomRight,
      //               ),
      //               borderRadius: BorderRadius.only(
      //                   topLeft: const Radius.circular(10),
      //                   topRight: const Radius.circular(10)
      //               )
      //             ),
      //             child: Column(
      //               children: <Widget>[
      //                 ListTile(
      //                   leading: XIcon(XIcons.camera),
      //                   title: Text(cameraText),
      //                   onTap: onCamera,
      //                 ),
      //
      //                 ListTile(
      //                   leading: XIcon(XIcons.attachFile),
      //                   title: Text(galleryText),
      //                   onTap: onAttachFile,
      //                 ),
      //               ],
      //             ),
      //           ),
      //         )
      //       );
      //     }
      //   );
      // },
      child: isCircle ?
      CircleAvatar(
        backgroundColor: color,
        child: ClipOval(
          child: SizedBox(
            width: 370,
            height: 370,
            child: content
          ),
        ),

        maxRadius: 130, // TODO determine size
        minRadius: 30,
      ) :

      Card(
        child: Container(

          height: 250, // TODO determine size
          width: 250,
          padding: const EdgeInsets.all(16),
          child: content,
        ),
        color: backgroundColor ?? Theme.of(context).primaryColor.withOpacity(OpacityRatios.normal),
      )
    );
  }
}
