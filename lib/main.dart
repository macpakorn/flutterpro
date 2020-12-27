import 'package:flutter/material.dart';
import 'item.dart';
import 'page_details.dart';

List<Item> seasideList = [
  Item(
      name: 'PUBG',
      pimage: 'images/profile.jpg',
      image: 'images/pubg.jpg',
      details:
          "PLAYERUNKNOWN’S BATTLEGROUNDS เป็นเกมที่ดีในระดับนึง หากเล่นกับเพื่อนๆ ก็จะยิ่งสนุกมากขึ้นไปอีกขั้น หากใครชอบเกมแนว FPS Tactical โดยมีฉากกว้างๆ แบบ Arma หรือ Battlefield ละก็ PUBG เองก็เป็นอีกหนึ่งทางเลือกได้เช่นกัน เพราะเกมนี้จะแตกต่างจาก H1Z1 ในส่วนของ Gameplay เป็นอย่างมากครับ แต่ทั้งนี้ทั้งนั้น ตัวเกมยังอยู่ในช่วง Early Access แน่นอนว่า Content ในเกมนั้นก็อาจจะมีไม่เยอะมาก ถ้าหากพูดถึงในเรื่องของ Item แต่งตัวละก็ แต่ทั้งนี้ทั้งนั้นตัวเกมก็มีราคาที่ไม่ค่อยสูงมาก 559 บาทเองเท่านั้น จาก 1 เดือนที่ตัวเกมได้ปล่อยออกมา ทีมงานได้มีการ Update ตัวเกมตลอดทุกๆ 1 สัปดาห์ เพื่อแก้ปัญหาเรื่อง Performance และทุกๆ 1 เดือนจะมีการ Update Content ใหม่ๆ ตลอดตาม Road Map ที่ว่าเอาไว้ครับ"),
  Item(
      name: 'VALORANT',
      pimage: 'images/profile.jpg',
      image: 'images/valorant.jpg',
      details:
          "ใครที่เคยหลงเสน่ห์เกมในตำนานอย่าง CSGO เกมนี้จะทำให้คุณรู้สึกเหมือนตอนนั้นอีกครั้งนึง แต่หากคุณเป็นมือใหม่อาจจะต้องใช้เวลาสักพักถึงจะเรียนรู้มัน เพราะเกมนี้ยิงกันตายง่ายมาก บางทีอาจจะหงุดหงิดหัวร้อนจนท้อเลิกเล่นไปเลยก็ได้ แต่หากคุณเริ่มเข้าใจเทคนิคต่าง ๆ เกมนี้จะเป็นเกมที่สนุกมาก และเหมาะกับทุกวัยและทุกกลุ่มจริง ๆ เพราะระบบเกมค่อยข้างจะเข้าใจง่าย ไม่มีอะไรซับซ้อนมาก อาจจะต้องใช้เวลาเพื่อจำสกิลของเอเจนต์แต่ละตัว และที่สำคัญสกิลเพล์ของผู้เล่นเองนั่นแหละว่าจะยิงแม่นขนาดไหน"),
  Item(
      name: 'FALL GUY',
      pimage: 'images/profile.jpg',
      image: 'images/fall guys.jpg',
      details:
          "เกมนี้เล่นแล้วหัวร้อน เล่นแล้วเครียด แต่แก่นหลัก ๆ ของเกมนี้คือความท้าทายและปลุกความอยากเอาชนะในตัวคุณออกมา ซึ่งอาการหัวร้อนมันเป็นของคู่กันกับการเล่นเกมอยู่แล้วเป็นเรื่องปกติ เพียงแค่เกมนี้มันหัวร้อนกว่าเกมอื่นแค่นั้นเอง (ฮา) แต่เชื่อเถอะว่าหากคุณเอาชนะเกมนี้ได้มันจะต้องฟินมากแน่ ๆ เพราะฉะนั้นหากคุณรู้ตัวว่าตัวเองเป็นคนชอบเอาชนะ และความท้าทาย เกมนี้ถูกสร้างมาเพื่อคนแบบคุณ แต่ถ้าเล่นแล้วแพ้ก็ไม่ต้องเสียใจคิดว่าตัวเองเล่นไม่เก่ง เพราะผมรู้สึกว่าการจะเอาชนะเกมนี้ได้บางที ดวง เองก็เป็นสิ่งสำคัญเหมือนกัน"),
];

void main() => runApp(MyApp());

/// This is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Bloggers';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

/// This is the stateful widget that the main application instantiates.
class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageListing(),
    ),
    new Scaffold(
        body: new Stack(
      children: <Widget>[
        ClipPath(
          child: Container(color: Colors.black.withOpacity(0.8)),
          clipper: getClipper(),
        ),
        Positioned(
            width: 550.0,
            top: 200,
            child: Column(
              children: <Widget>[
                Container(
                    width: 150.0,
                    height: 150.0,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            image: AssetImage('images/profile.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.all(Radius.circular(75.0)),
                        boxShadow: [
                          BoxShadow(blurRadius: 7.0, color: Colors.black)
                        ])),
                SizedBox(height: 90.0),
                Text(
                  'Mac Pakorn',
                  style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(height: 15.0),
                SizedBox(height: 25.0),
                SizedBox(height: 25.0),
                Container(
                    height: 40.0,
                    width: 100.0,
                    child: Material(
                      borderRadius: BorderRadius.circular(20.0),
                      shadowColor: Colors.redAccent,
                      color: Colors.red,
                      elevation: 7.0,
                      child: GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: Text(
                            'Log out',
                            style: TextStyle(
                                color: Colors.white, fontFamily: 'Montserrat'),
                          ),
                        ),
                      ),
                    ))
              ],
            ))
      ],
    ))
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bloggers'),
      ),
      body: Stack(
        children: <Widget>[_widgetOptions.elementAt(_selectedIndex)],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Member',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

class getClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();

    path.lineTo(0.0, size.height / 1.9);
    path.lineTo(size.width + 125, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}

class PageListing extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Shows the name of navigation type/routing used
      body: ListView.builder(
          itemCount: seasideList != null ? seasideList.length : 0,
          itemBuilder: (BuildContext context, int index) {
            return Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                elevation: 5,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                margin:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
                child: Container(
                  height: 500,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "${seasideList[index].image}",
                      ),
                    ),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          ExactAssetImage(seasideList[index].pimage),
                    ),
                    onTap: () {
                      //Tapping on listItem navigates to PageDetails
                      _navigateToPageDetails(context, seasideList[index]);
                    },
                  ),
                ));
          }),
    );
  }

  //Launches PageDetails and awaits the results from Navigator.pop() called from PageDetails.
  _navigateToPageDetails(BuildContext context, Item item) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the PageDetails Screen.

    //Navigation implementations are different for each part.
    //Part#1. Un-named
    final resultFromPageDetails = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PageDetails(
          item: item,
        ),
      ),
    );

    //snackbars is used to display the result returned from another page.
    //Hide any previous snackbars and show the new resultFromPageDetails.
    Scaffold.of(context);
  }
}
