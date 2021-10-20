
class ChatItemModel {
  final String name;
  final String message;
  final String time;
  final String avatarUrl;

  ChatItemModel({
    required this.name, 
    required this.message, 
    required this.time, 
    required this.avatarUrl
  });
}

List<ChatItemModel> chatItemData = [
  new ChatItemModel(
      name: "Sang Mantan",
      message: "Bales dong :'(",
      time: "15:30",
      avatarUrl:
      "Assets/img/18.jpg"),
  new ChatItemModel(
      name: "Ucok",
      message: "Posisi lgi dimana ki?",
      time: "15:01",
      avatarUrl:
      "Assets/img/21.jpg"),
  new ChatItemModel(
      name: "Stepen (Fullstack Dev)",
      message: "Bro, di controller product masih banyak bug ...",
      time: "15:00",
      avatarUrl:
      "Assets/img/24.jpg"),
  new ChatItemModel(
      name: "Ibuk",
      message: "Jgn lupa istirahat, krj trs nti tipes.",
      time: "10:30",
      avatarUrl:
      "Assets/img/33.jpg"),
  new ChatItemModel(
      name: "Bapak Satrio (CTO)",
      message: "Mas Rizki, besok bisa bertemu dengan saya ...",
      time: "09:30",
      avatarUrl:
      "Assets/img/35.jpg"),
  new ChatItemModel(
      name: "Bu Linda (UI/UX)",
      message: "Mas Rizki, untuk pembahasan lebih lanjut ...",
      time: "08:20",
      avatarUrl:
      "Assets/img/36.jpg"),
];