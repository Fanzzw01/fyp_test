import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/material/icon_button.dart';
// import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter/src/material/scaffold.dart';
// import 'package:fyp_test/gestureDetectorTest.dart';
import 'onePage.dart';
import 'scannerTest.dart';
// import 'gestureDetectorTest.dart';
import 'notificationManagerTest.dart';
import 'package:flutter/src/widgets/framework.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes:{
        '/page1':(context)=>RightPage("我的主页",),
        '/page2':(context)=>RightPage2("我的相册",),
        '/page3':(context)=>RightPage1("我的账户",),
        '/page4':(context)=>RightPage("我的报告",),
        '/page5':(context)=>RightPage("反馈",),
        '/page6':(context)=>BarCodeScanPage("扫一扫",),
        // '/page7':(context)=>gestureDetectorTest("手势测试",),
      },
      home: DrawerDemo(title:'菜单'),
    );
  }
}

class DrawerDemo extends StatefulWidget{
  DrawerDemo({Key ? key, required this.title}) : super(key: key);

  final String title;

  @override
  _DrawerDemoState createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo>{
  get imgLists => [];

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.add_to_photos),
        //   onPressed: ()=>{},
        // ),
        title: new Text('菜单'),
        actions: <Widget>[
          IconButton(
            onPressed: ()=>{Navigator.pushNamed(context, "/page6")},
            // onPressed: ()=>{},
            icon: Icon(Icons.qr_code_scanner),
            tooltip: '扫一扫',

          ),
          IconButton(
            onPressed: ()=>{},
            icon: Icon(Icons.delete),
            tooltip: '删除',
          ),
          IconButton(
            onPressed: ()=>{},
            icon: Icon(Icons.search),
            tooltip: '查询',
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('SBC-18-1010'),
              accountEmail: Text('SBC-18-1010@sbc.usst.edu.cn'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundImage: AssetImage('images/header.png'),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              onDetailsPressed: ()=>{Navigator.pushNamed(context, "/page7")},
            ),
            ListTile(
              title: Text('我的主页'),
              leading: Icon(Icons.description),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pushNamed(context, "/page1");
              },
            ),
            ListTile(
              title:Text('我的相册'),
              leading: Icon(Icons.image),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pushNamed(context, "/page2");
              },
            ),
            ListTile(
              title: Text('我的账户'),
              leading: Icon(Icons.insert_drive_file),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pushNamed(context, "/page3");
              },
            ),
            new Divider(),
            ListTile(
              title: Text('我的报告'),
              leading: Icon(Icons.report_gmailerrorred_outlined),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pushNamed(context, "/page4");
              },
            ),
            new Divider(),
            ListTile(
              title: Text('反馈'),
              leading: Icon(Icons.warning_outlined),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: (){
                Navigator.pushNamed(context, "/page5");
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('主页面', style: TextStyle(fontSize: 50),),
      ),
      // body: Container(
      //   height: 200,
      //   child: Swiper(
      //     scrollDirection: Axis.horizontal,
      //     itemCount: 4,
      //     autoplay: true,
      //     itemBuilder: (BuildContext context, int index){
      //       return Image.network(imgLists[index]);
      //     },
      //     pagination: SwiperPagination(
      //       alignment: Alignment.bottomCenter,
      //       margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
      //       builder: DotSwiperPaginationBuilder(
      //         color: Colors.black54,
      //         activeColor: Colors.white,
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}

// class BackgroundWidget extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       child:Image.asset(
//         'asset/images.background.jpg',
//         width: MediaQuery.of(context).size.width + 100,
//         height: MediaQuery.of(context).size.height,
//         fit: BoxFit.fill,
//       ),
//     );
//   }
// }
//
// class BackgroundTransition extends StatelessWidget {
//   BackgroundTransition({required this.child, required this.animation});
//
//   final Widget child;
//   final Animation<double> animation;
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedBuilder(
//       animation: animation,
//       builder: (BuildContext context, Widget ? child) {
//         return Positioned(
//           left: animation.value - 50.0,
//           child: this.child,
//         );
//       },
//       child: child,
//     );
//   }
// }
