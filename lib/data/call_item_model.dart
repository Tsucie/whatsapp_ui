import 'package:flutter/material.dart';

// Model Data
class CallItemModel {
  final String name;
  final String time;
  final String avatarUrl;
  final Color colorItem;

  CallItemModel({
    required this.name, 
    required this.time, 
    required this.avatarUrl, 
    required this.colorItem
  });
}

// Create List of model data
List<CallItemModel> callItemData = [
  new CallItemModel(
      name: "Sang Mantan",
      time: "(9)Hari ini, 08:34",
      avatarUrl:
      "Assets/img/18.jpg",
      colorItem: Colors.red),
  new CallItemModel(
      name: "Ucok",
      time: "Kemarin, 15:33",
      avatarUrl:
      "Assets/img/21.jpg",
      colorItem: Colors.green),
  new CallItemModel(
      name: "Si Ucup",
      time: "Kemarin, 09:21",
      avatarUrl:
      "Assets/img/22.jpg",
      colorItem: Colors.red),
  new CallItemModel(
      name: "Stepen (Fullstack Dev)",
      time: "Kemarin, 08:21",
      avatarUrl:
      "Assets/img/24.jpg",
      colorItem: Colors.green),
  new CallItemModel(
      name: "Bapak Satrio (CTO)",
      time: "Kemarin, 08:10",
      avatarUrl:
      "Assets/img/35.jpg",
      colorItem: Colors.green),
  new CallItemModel(
      name: "Bu Linda (UI/UX)",
      time: "Kemarin, 07:29",
      avatarUrl:
      "Assets/img/36.jpg",
      colorItem: Colors.green),
  new CallItemModel(
      name: "Ibuk",
      time: "Kemarin, 07:05",
      avatarUrl:
      "Assets/img/33.jpg",
      colorItem: Colors.green),
];