import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/editable_text.dart';
import 'package:flutter/src/widgets/sliver.dart';

TextEditingController userController = new TextEditingController();
TextEditingController passwordController = new TextEditingController();

class RightPage extends StatelessWidget{
  final String title;

  RightPage(this.title);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:  AppBar(
        title: Text(this.title),
      ),
      body: Center(
        child: Text(this.title, style: TextStyle(fontSize: 50),),
      ),
    );
  }
}

class RightPage1 extends StatelessWidget{
  final String title;

  RightPage1(this.title);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(this.title),
      ),

      body: Center(
        child: Column(
          children:<Widget>[
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: userController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: '请输入账号',
                  icon: Icon(Icons.email),
                ),
                keyboardType: TextInputType.number,
                readOnly: false,
                maxLines: 1,
                minLines: 1,
                onChanged:(String text){
                  print(text);
                },
                onSubmitted:(String text){
                  print('你在文本框中输入了' + text);
                },
                obscureText: false,
                cursorWidth: 10,
                cursorColor: Colors.red,
                cursorRadius: Radius.circular(5),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: passwordController,
                autofocus: true,
                decoration: InputDecoration(
                  labelText: '请输入密码',
                  icon: Icon(Icons.lock_clock_outlined),
                ),
                keyboardType: TextInputType.number,
                readOnly: false,
                maxLines: 1,
                minLines: 1,
                onChanged:(String text){
                  print(text);
                },
                onSubmitted:(String text){
                  print('你在文本框中输入了' + text);
                },
                obscureText: true,
                cursorWidth: 10,
                cursorColor: Colors.red,
                cursorRadius: Radius.circular(5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MySliverPersistentHeaderDelegate implements SliverPersistentHeaderDelegate{
  @override
  double maxExtent;

  @override
  double minExtent;

  MySliverPersistentHeaderDelegate({required this.maxExtent, required this.minExtent});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent){
    return Stack(
      fit: StackFit.expand,
      children: <Widget>[
        Image.asset(
          'images/phone.jpg',
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          bottom: 20,
          right: 20,
          child: Text(
            '我的相册',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate){
    return true;
  }

  @override
  // TODO: implement snapConfiguration
  FloatingHeaderSnapConfiguration? get snapConfiguration => null;

  @override
  // TODO: implement stretchConfiguration
  OverScrollHeaderStretchConfiguration? get stretchConfiguration => null;

  @override
  // TODO: implement showOnScreenConfiguration
  PersistentHeaderShowOnScreenConfiguration? get showOnScreenConfiguration => throw UnimplementedError();

  @override
  // TODO: implement vsync
  TickerProvider? get vsync => throw UnimplementedError();
}

class RightPage2 extends StatelessWidget{
  final String title;
  final List<String> imgList=['你的图片网址'];

  RightPage2(this.title);

  @override
  Widget _customView(BuildContext context){
    var imgLists;
    return CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            pinned: true,
            delegate: MySliverPersistentHeaderDelegate(maxExtent: 200, minExtent: 50),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: MediaQuery.of(context).size.width / 3,
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
              childAspectRatio: 1080 / 1920,
            ),
            // delegate: SliverChildBuilderDelegate(BuildContext context, int index){
            //   return Image.network(imgLists[index%4]);
            // },
            delegate: SliverChildBuilderDelegate((BuildContext context, int index){
              return Image.network(imgLists[index%4]);
            },
              childCount: imgLists.length*5,
            ),
          ),
        ]
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('折叠相册'),
      ),
      body: _customView(context),
    );
  }
}