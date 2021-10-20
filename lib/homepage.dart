// import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_rizkyadji/pages/call_page.dart';
import 'package:whatsapp_ui_rizkyadji/pages/camera_page.dart';
import 'package:whatsapp_ui_rizkyadji/pages/chat_page.dart';
import 'package:whatsapp_ui_rizkyadji/pages/status_page.dart';

class HomePage extends StatefulWidget {
	// final List<CameraDescription> cameras = <CameraDescription>[];
	// HomePage({cameras});

	@override
	_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {
	late TabController _tabController;
	bool showFab = true;
	bool isCallsPage = false;
  bool isStatusPage = false;

	@override
	void initState() {
		super.initState();

		_tabController = TabController(vsync: this, initialIndex: 1, length: 4);
		_tabController.addListener(() {
			switch (_tabController.index) {
				case 1:
					showFab = true;
        	isCallsPage = false;
          isStatusPage = false;
        	break;
        case 2:
          showFab = true;
          isCallsPage = false;
          isStatusPage = true;
          break;
        case 3:
        	showFab = true;
        	isCallsPage = true;
          isStatusPage = false;
        	break;
        default:
        	showFab = false;
        	isCallsPage = false;
          isStatusPage = false;
        	break;
			}
			setState(() {});
		});
	}

	@override
	Widget build(BuildContext context) {
		return Scaffold(
			appBar: AppBar(
				title: Text("MyChatApp", style: TextStyle(fontFamily: "Helvetica")),
				elevation: 0.7,
				bottom: TabBar(
					controller: _tabController,
					indicatorColor: Colors.white,
					tabs: <Widget>[
						Tab(icon: Icon(Icons.camera_alt)),
						Tab(text: "CHAT"),
						Tab(text: "STATUS"),
						Tab(text: "PANGGILAN"),
					],
				),
				actions: <Widget>[
					Icon(Icons.search),
					Padding(
						padding: const EdgeInsets.symmetric(horizontal: 5.0),
					),
					Icon(Icons.more_vert)
				],
			),
			body: TabBarView(
				controller: _tabController,
				children: <Widget>[
					CameraPage(), // CameraPage(widget.cameras),
					ChatPage(),
					StatusPage(),
					CallsPage()
				],
			),
			floatingActionButton: showFab
				? FloatingActionButton(
						backgroundColor: Theme.of(context).accentColor,
						child: isCallsPage 
						? Icon(
                Icons.add_call,
                color: Colors.white,
            )
						: isStatusPage
              ? Icon(
									Icons.camera_alt,
									color: Colors.white,
						  )
              : Icon(
									Icons.message,
									color: Colors.white,
						  ),
						onPressed: () => isStatusPage
            ? Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CameraPage()
              )
            )
            : print("fab clicked!!!"),
					)
			  : null,
		);
	}
}

