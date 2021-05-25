// import 'dart:math';
//
// import '../themes/theme_factory.dart';
// import '../widgets/x_text.dart';
// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
//
// class XDayStats extends StatefulWidget {
//
//   final List<Color> availableColors = [
//     Colors.purpleAccent,
//     Colors.yellow,
//     Colors.lightBlue,
//     Colors.orange,
//     Colors.pink,
//     Colors.redAccent,
//   ];
//
//   @override
//   _XDayStatsState createState() => _XDayStatsState();
// }
//
// class _XDayStatsState extends State<XDayStats> {
//
//
// //  final Color barBackgroundColor = const Color(0xff72d8bf);
//   final Duration animDuration = const Duration(milliseconds: 250);
//
//   int? touchedIndex;
//
//   bool isPlaying = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return AspectRatio(
//       aspectRatio: 1.4,
//       child:  _getCard(),
//     );
//   }
//
//   _getCard(){
//
//     Card(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(2)),
// //        color: const Color(0xff81e5cd),
//       color: Colors.white,
// //        color: ThemeFactory.instance.getTheme().themeData.accentColor,
//       child: Stack(
//         children: <Widget>[
//           Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               mainAxisAlignment: MainAxisAlignment.start,
//               mainAxisSize: MainAxisSize.max,
//               children: <Widget>[
//                 XText("Week Summary",
//                   color: ThemeFactory.instance.getTheme().themeData.primaryColor,
//                   size: 24,
// //                    style: TextStyle(
// //                        color: const Color(0xff0f4a3c), fontSize: 24, fontWeight: FontWeight.bold),
//                 ),
// //                  const SizedBox(
// //                    height: 4,
// //                  ),
//
//
// //                  Text(
// //                    'Grafik konsumsi kalori',
// //                    style: TextStyle(
// //                        color: const Color(0xff379982), fontSize: 18, fontWeight: FontWeight.bold),
// //                  ),
//                 const SizedBox(
//                   height: 28,
//                 ),
//
//
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 8.0),
//                     child: BarChart(
//                       isPlaying ? randomData() : mainBarData(),
//                       swapAnimationDuration: animDuration,
//                     ),
//                   ),
//                 ),
//
//
//                 const SizedBox(
//                   height: 12,
//                 ),
//               ],
//             ),
//           ),
//
// //            Padding(
// //              padding: const EdgeInsets.all(8.0),
// //              child: Align(
// //                alignment: Alignment.topRight,
// //                child: IconButton(
// //                  icon: Icon(
// //                    isPlaying ? Icons.pause : Icons.play_arrow,
// //                    color: const Color(0xff0f4a3c),
// //                  ),
// //                  onPressed: () {
// //                    setState(() {
// //                      isPlaying = !isPlaying;
// //                      if (isPlaying) {
// //                        refreshState();
// //                      }
// //                    });
// //                  },
// //                ),
// //              ),
// //            )
//
//
//         ],
//       ),
//     );
//     return Container(
//       decoration: BoxDecoration(
//         borderRadius: BorderRadius.circular(2),
//         color: Colors.white, // TODO
//       ),
//       padding: const EdgeInsets.all(8),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         mainAxisAlignment: MainAxisAlignment.start,
//         mainAxisSize: MainAxisSize.max,
//         children: <Widget>[
//           XText("Week Summary",
//             color: ThemeFactory.instance.getTheme().themeData.primaryColor,
//             size: 24,
// //                    style: TextStyle(
// //                        color: const Color(0xff0f4a3c), fontSize: 24, fontWeight: FontWeight.bold),
//           ),
// //                  const SizedBox(
// //                    height: 4,
// //                  ),
//
//
// //                  Text(
// //                    'Grafik konsumsi kalori',
// //                    style: TextStyle(
// //                        color: const Color(0xff379982), fontSize: 18, fontWeight: FontWeight.bold),
// //                  ),
//           const SizedBox(
//             height: 28,
//           ),
//
//
//           Expanded(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: BarChart(
//                 isPlaying ? randomData() : mainBarData(),
//                 swapAnimationDuration: animDuration,
//               ),
//             ),
//           ),
//
//
//           const SizedBox(
//             height: 12,
//           ),
//         ],
//       ),
//     );
//
//   }
//
//   BarChartGroupData makeGroupData(
//       int x,
//       double y, {
//         bool isTouched = false,
// //        Color barColor = Colors.white,
//         double? width = 22,
//         List<int> showTooltips = const [],
//       }) {
//
//     return BarChartGroupData(
//       x: x,
//       barRods: [
//         BarChartRodData(
//           y: isTouched ? y + 1 : y,
//           colors: [
//             isTouched
//                 ? ThemeFactory.instance.getTheme().themeData.primaryColor
//                 : ThemeFactory.instance.getTheme().themeData.accentColor,
//           ],
//           width: width,
//           backDrawRodData: BackgroundBarChartRodData(
//             show: true,
//             y: 20,
//             colors: [
//               Color(hexColor("e4f0f5"))
//             ],
//           ),
//         ),
//       ],
//       showingTooltipIndicators: showTooltips,
//     );
//   }
//
//   List<BarChartGroupData> showingGroups() => List.generate(7, (i) {
//     switch (i) {
//       case 0:
//         return makeGroupData(0, 5, isTouched: i == touchedIndex);
//       case 1:
//         return makeGroupData(1, 6.5, isTouched: i == touchedIndex);
//       case 2:
//         return makeGroupData(2, 5, isTouched: i == touchedIndex);
//       case 3:
//         return makeGroupData(3, 7.5, isTouched: i == touchedIndex);
//       case 4:
//         return makeGroupData(4, 9, isTouched: i == touchedIndex);
//       case 5:
//         return makeGroupData(5, 11.5, isTouched: i == touchedIndex);
//       case 6:
//       default:
//         return makeGroupData(6, 6.5, isTouched: i == touchedIndex);
//     }
//   });
//
//
//   BarChartData mainBarData() {
//     return BarChartData(
//       barTouchData: BarTouchData(
//         touchTooltipData: BarTouchTooltipData(
//             tooltipBgColor: ThemeFactory.instance.getTheme().themeData.primaryColor,
//             getTooltipItem: (group, groupIndex, rod, rodIndex) {
//               String weekDay;
//               switch (group.x.toInt()) {
//                 case 0:
//                   weekDay = 'Monday';
//                   break;
//                 case 1:
//                   weekDay = 'Tuesday';
//                   break;
//                 case 2:
//                   weekDay = 'Wednesday';
//                   break;
//                 case 3:
//                   weekDay = 'Thursday';
//                   break;
//                 case 4:
//                   weekDay = 'Friday';
//                   break;
//                 case 5:
//                   weekDay = 'Saturday';
//                   break;
//                 default:
//                   weekDay = 'Sunday';
//                   break;
//               }
//               return BarTooltipItem(
//                   weekDay + '\n' + (rod.y - 1).toString(),
//                   TextStyle(color: Colors.white)
//               );
//             }),
//         touchCallback: (barTouchResponse) {
//           setState(() {
//             if (barTouchResponse.spot != null &&
//                 barTouchResponse.touchInput is! FlPanEnd &&
//                 barTouchResponse.touchInput is! FlLongPressEnd) {
//               touchedIndex = barTouchResponse.spot!.touchedBarGroupIndex;
//             } else {
//               touchedIndex = -1;
//             }
//           });
//         },
//       ),
//       titlesData: FlTitlesData(
//         show: true,
//         bottomTitles: SideTitles(
//           showTitles: true,
//           getTextStyles: (double axisValue){
//             return TextStyle(
//               color: ThemeFactory.instance.getTheme().themeData.primaryColor,
//               fontWeight: FontWeight.bold,
//               fontSize: 14
//             );
//           },
//           margin: 16,
//           getTitles: (double value) {
//             switch (value.toInt()) {
//               case 0:
//                 return 'M';
//               case 1:
//                 return 'T';
//               case 2:
//                 return 'W';
//               case 3:
//                 return 'T';
//               case 4:
//                 return 'F';
//               case 5:
//                 return 'S';
//               case 6:
//                 return 'S';
//               default:
//                 return '';
//             }
//           },
//         ),
//         leftTitles: SideTitles(
//           showTitles: false,
//         ),
//       ),
//       borderData: FlBorderData(
//         show: false,
//       ),
//       barGroups: showingGroups(),
//     );
//   }
//
//   BarChartData randomData() {
//     return BarChartData(
//       barTouchData: BarTouchData(
//         enabled: false,
//       ),
//       titlesData: FlTitlesData(
//         show: true,
//         bottomTitles: SideTitles(
//           showTitles: true,
//           getTextStyles: (double axisValue){
//             return TextStyle(color: Colors.red, fontSize: 14);
//           },
//           margin: 16,
//           getTitles: (double value) {
//             switch (value.toInt()) {
//               case 0:
//                 return 'M';
//               case 1:
//                 return 'T';
//               case 2:
//                 return 'W';
//               case 3:
//                 return 'T';
//               case 4:
//                 return 'F';
//               case 5:
//                 return 'S';
//               case 6:
//                 return 'S';
//               default:
//                 return '';
//             }
//           },
//         ),
//         leftTitles: SideTitles(
//           showTitles: false,
//         ),
//       ),
//       borderData: FlBorderData(
//         show: false,
//       ),
//       barGroups: List.generate(7, (i) {
//         switch (i) {
//           case 0:
//             return makeGroupData(0, Random().nextInt(15).toDouble() + 6,);
//           case 1:
//             return makeGroupData(1, Random().nextInt(15).toDouble() + 6,);
//           case 2:
//             return makeGroupData(2, Random().nextInt(15).toDouble() + 6,);
//           case 3:
//             return makeGroupData(3, Random().nextInt(15).toDouble() + 6,);
//           case 4:
//             return makeGroupData(4, Random().nextInt(15).toDouble() + 6,);
//           case 5:
//             return makeGroupData(5, Random().nextInt(15).toDouble() + 6,);
//           case 6:
//           default:
//            return makeGroupData(6, Random().nextInt(15).toDouble() + 6);
//         }
//       }),
//     );
//   }
//
//   Future<dynamic> refreshState() async {
//     setState(() {});
//     await Future<dynamic>.delayed(animDuration + const Duration(milliseconds: 50));
//     if (isPlaying) {
//       refreshState();
//     }
//   }
// }
//
//
// /*
// TODO
// typedef GetTitleTextStyleFunction = TextStyle Function(double value);
//  */