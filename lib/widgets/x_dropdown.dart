// import '../constants/x_icons.dart';
// import 'package:flutter/material.dart';
//
// import 'x_icon.dart';
// import 'x_text.dart';
//
// class XDropDown extends StatelessWidget {
//
//   final String text;
//   final VoidCallback? onPressed;
//
//   const XDropDown({Key? key, required this.text, this.onPressed}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onPressed,
//       child: Container(
//
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(4)),
//             border: Border.all(color: Theme.of(context).primaryColor)
//         ),
//
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Row(
//             children: [
//               Text(text),
//               Spacer(),
//               XIcon(
//                 XIcons.down_arrow,
//                 size: 16,
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
// }
//
//
// /*
//
// class XDropDown extends StatelessWidget {
//
//   final String text;
//   final VoidCallback onPressed;
//   final String dialogTitle;
//   final List list;
//   final String groupValue;
//   final Function onListItemChange;
//   final String onSelectedItemText;
//   final String doneText;
//   final Function onDonePressed;
//
//   const XDropDown({
//     Key? key, this.text, this.onPressed, this.dialogTitle, this.list,
//     this.groupValue, this.onListItemChange, this.onSelectedItemText,
//     this.doneText, this.onDonePressed})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       // onTap: onPressed,
//       onTap: () {
//         _showStoreCatalogDialog(context);
//       },
//       child: Container(
//
//         decoration: BoxDecoration(
//             borderRadius: BorderRadius.all(Radius.circular(4)), // TODO
//             border: Border.all(color: Theme.of(context).primaryColor) // TODO
//         ),
//
//         child: Padding(
//           padding: const EdgeInsets.all(8.0), // TODO
//           child: Row(
//             children: [
//               Text(text),
//               Spacer(),
//               XIcon(
//                 XIcons.down_arrow,
//                 size: 16, // TODO
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//
//   _showStoreCatalogDialog(BuildContext context){
//     showDialog(
//         context: context,
//         builder: (BuildContext context) {
//           return AlertDialog(
//             title: Text(dialogTitle),
//             content: StatefulBuilder(
//               builder: (context, setState) {
//                 return Column(
//                   mainAxisSize: MainAxisSize.min,
//                   children: List<Widget>.generate(list.length, (int index) {
//
//                     return ListTile(
//                       leading: Radio<String>(
//                         value: list.elementAt(index).id,
//                         groupValue: groupValue,
//                         onChanged: (String val) {
//                           onListItemChange(index);
//                         },
//                       ),
//
//                       title: Text(onSelectedItemText),
//                     );
//
//                   }),
//                 );
//               },
//             ),
//
//             actions: <Widget>[
//               XFlatButton(
//                 child: Text(doneText),
//                 onPressed: onDonePressed ?? (){
//                   Navigator.pop(context);
//                 }
//               )
//             ],
//           );
//         }
//     );
//   }
//
// }
//
//  */
