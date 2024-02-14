// import 'package:flutter/material.dart';
// import 'package:tahseel_mobile_apps/ui/potolo/vews_text.dart';
//
// import '../../utils/package.dart';
//
// class PotoloScreen extends StatefulWidget {
//   const PotoloScreen({super.key});
//
//   @override
//   State<PotoloScreen> createState() => _PotoloScreenState();
// }
//
// class _PotoloScreenState extends State<PotoloScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         title: Text("Browse",style: TextStyle(
//           fontSize: 20,
//           fontWeight: FontWeight.w700,
//         ),),
//         leading: Container(
//           // height: 40,
//           // width: 40,
//           margin: EdgeInsets.symmetric(vertical: 8,horizontal: 8),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(12),
//             border: Border.all(color: Colors.grey.shade200),
//
//           ),
//           child: Icon(Icons.arrow_back_ios),
//         ),
//         actions: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 40,
//               width: 40,
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(color: Colors.grey.shade200),
//
//               ),
//               child: Icon(Icons.search),
//             ),
//           ),
//         ],
//
//       ),
//       backgroundColor: Colors.white,
//       body: Column(
//
//         children: [
//
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 18.0),
//             child: Row(
//               children: [
//                 Icon(Icons.local_fire_department_outlined),
//                 SizedBox(width: 5,),
//                 Text("8502 Preston Rd. Inglewood",style: TextStyle(
//                   fontSize: 16,
//                   fontWeight: FontWeight.w500,
//                 ),),
//                 SizedBox(width: 5,),
//                 Icon(Icons.arrow_downward)
//
//               ],
//             ),
//           ),
//           SizedBox(height: 20,),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 18.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Vegetables",style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w700
//                 ),),
//                 Text("View All",style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.deepPurple,
//                     fontWeight: FontWeight.w700
//                 ),)
//               ],
//             ),
//           ),
//
//           SizedBox(height: 10,),
//           SizedBox(
//             height: 127,
//             child: ListView.builder(
//               shrinkWrap: true,
//               scrollDirection: Axis.horizontal,
//               itemCount: 7,
//                 itemBuilder: (_,index){
//               return Column(
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 18.0),
//                     child: Container(
//                       width: 111,
//                       height: 95,
//                       decoration: BoxDecoration(
//                           color: Color(0xffE5FDFE),
//                           borderRadius: BorderRadius.circular(11),
//                           image: DecorationImage(
//                             image: AssetImage("assets/1652358081103-Photoroom 1.png"),
//                           )
//                       ),
//                     ),
//                   ),
//                   SizedBox(height: 10,),
//                   Text("Tomatoes",style: TextStyle(
//                     fontSize: 14,
//                     fontWeight: FontWeight.w700,
//                   ),)
//
//                 ],
//               );
//             }),
//           ),
//           SizedBox(height: 30,),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 18.0,vertical: 10),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Fruits",style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w700
//                 ),),
//                 Text("View All",style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.deepPurple,
//                     fontWeight: FontWeight.w700
//                 ),)
//               ],
//             ),
//           ),
//           SizedBox(height: 10,),
//           SizedBox(
//             height: 127,
//             child: ListView.builder(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 7,
//                 itemBuilder: (_,index){
//                   return Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 18.0),
//                         child: Container(
//                           width: 111,
//                           height: 95,
//                           decoration: BoxDecoration(
//                               color: Color(0xffE5FDFE),
//                               borderRadius: BorderRadius.circular(11),
//                             image: DecorationImage(
//                               image: AssetImage("assets/1652358081103-Photoroom 1.png"),
//                             )
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 10,),
//                       Text("Tomatoes",style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w700,
//                       ),)
//
//                     ],
//                   );
//                 }),
//           ),
//           SizedBox(height: 30,),
//           Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 18.0),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text("Fresh Food",style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.w700
//                 ),),
//                 Text("View All",style: TextStyle(
//                     fontSize: 16,
//                     color: Colors.deepPurple,
//                     fontWeight: FontWeight.w700
//                 ),)
//               ],
//             ),
//           ),
//           SizedBox(height: 10,),
//           SizedBox(
//             height: 127,
//             child: ListView.builder(
//                 shrinkWrap: true,
//                 scrollDirection: Axis.horizontal,
//                 itemCount: 7,
//                 itemBuilder: (_,index){
//                   return Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 18.0),
//                         child:Container(
//                           width: 111,
//                           height: 95,
//                           decoration: BoxDecoration(
//                               color: Color(0xffE5FDFE),
//                               borderRadius: BorderRadius.circular(11),
//                               image: DecorationImage(
//                                 image: AssetImage("assets/1652358081103-Photoroom 1.png"),
//                               )
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 10,),
//                       Text("Tomatoes",style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w700,
//                       ),)
//
//                     ],
//                   );
//                 }),
//           ),
//
//         ],
//       ),
//     );
//   }
// }
