


import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_auth/Admin/stats_services/statsModel.dart';
import 'package:flutter_auth/constants.dart';
import 'package:flutter_auth/volunteer/VolunteersOrders.dart';
class statService{
  final FirebaseFirestore _Firestore = FirebaseFirestore.instance;

  addstats(statsModel p1) {
    _Firestore.collection(stats).add(
        {
          users: p1.nb_users,
         money:p1.money_donated,
          order:p1.numberb_of_order,
          IOrder:p1.nb_of_item_orders,
          IMoney:p1.Money_donated_with_items,
        });
  }
Stream<QuerySnapshot> loadstats() {
  return _Firestore.collection(stats).snapshots();
}
}