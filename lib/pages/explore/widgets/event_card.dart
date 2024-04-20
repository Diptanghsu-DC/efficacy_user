// import 'package:efficacy_user/config/config.dart';
// import 'package:flutter/material.dart';

// class EventCard extends StatefulWidget {
//   const EventCard({super.key});

//   @override
//   State<EventCard> createState() => _EventCardState();
// }

// class _EventCardState extends State<EventCard> {
//   @override
//   Widget build(context){
//     return Card(
//         child: Column(
//           children: [
//             const Gap(10),
//             ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: event.posterURL.isEmpty
//                   ? Image.asset(
//                       Assets.mediaImgPath,
//                       fit: BoxFit.cover,
//                     )
//                   : CustomNetworkImage(
//                       url: event.posterURL,
//                       errorWidget: (BuildContext context, _, __) {
//                         return Image.asset(
//                           Assets.mediaImgPath,
//                           fit: BoxFit.cover,
//                         );
//                       },
//                     ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 top: 8.0,
//                 left: 28.0,
//               ),
//               child: Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   event.title,
//                   style: const TextStyle(
//                     color: Color.fromARGB(253, 82, 81, 81),
//                     fontSize: 25,
//                     fontWeight: FontWeight.w600,
//                   ),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.only(
//                 left: 28.0,
//                 bottom: 25.0,
//               ),
//               child: Column(
//                 children: [
//                   StreamBuilder(
//                       stream: ClubController.get(id: event.clubID),
//                       builder: (BuildContext context, AsyncSnapshot snapshot) {
//                         List<ClubModel> club = [];
//                         if (snapshot.hasData) {
//                           club = snapshot.data ?? [];
//                         }
//                         if (club.isNotEmpty) {
//                           String clubName =
//                               "${club.first.name[0].toUpperCase()}${club.first.name.substring(1)}";
//                           return EventDataField(
//                             text: clubName,
//                             icon: Icons.group,
//                           );
//                         }
//                         return const SizedBox.shrink();
//                       }),
//                   EventDataField(
//                     text:
//                         "${_dateFormatter.format(event.startDate)} - ${_dateFormatter.format(event.endDate)}",
//                     icon: CupertinoIcons.calendar,
//                   ),
//                   EventDataField(
//                     text: Formatter.timeOnly(event.startDate),
//                     icon: CupertinoIcons.clock,
//                   ),
//                 ].separate(15),
//               ),
//             )
//           ].separate(5),
//         ),
//       );
//   }
// }