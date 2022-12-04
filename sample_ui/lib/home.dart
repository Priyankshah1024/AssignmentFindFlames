import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class home_page extends StatefulWidget {
  const home_page({Key? key}) : super(key: key);

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  TextEditingController editingController = TextEditingController();

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
  Text('', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  Text('', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  Text('', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  Text('', style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold))
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
      children: [
        _widgetOptions.elementAt(_selectedIndex),
        Row(
          children: [
            Container(
                  margin: const EdgeInsets.only(top: 10, left: 20),
                  child: const CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage("assets/profile.jpg"),
                  ),
                // ),
              // ],
            ),

            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20, left: 70),
                  child: const Text("Puzzels", style: TextStyle(fontSize: 27, fontWeight: FontWeight.w500, color: Color(0xFFF48FB1)), textAlign: TextAlign.center,),),
              ],
            ),

            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 20,left: 90,),
                  child: const Icon(Icons.settings, size: 33, color: Colors.black,),
                )
              ],
            ),


          ],
        ),
        const SizedBox(height: 5),
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(10),
            child: Stack(
              children: <Widget>[
                Column(
                  children: [
                    SizedBox(
                      // width: 200,
                      height: 200,
                      // margin: EdgeInsets.symmetric(vertical: 20.0),
                      // height: 550.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Stack(
                            children: [
                              SizedBox(
                                width: 280,
                                child: Card(
                                  semanticContainer: true,
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  elevation: 5,
                                  margin: const EdgeInsets.all(10),
                                  child: Image.asset('assets/likes.jpg', fit: BoxFit.fill),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                    margin: const EdgeInsets.only(left: 120, top: 50),
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      children: const [
                                        Icon(Icons.favorite_outlined, color: Colors.red, size: 50,),
                                        SizedBox(height: 20,),
                                        Text("20", style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500,color: Colors.white, ),),
                                      ],
                                    ),),
                              const SizedBox(height: 10,),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
                                alignment: Alignment.bottomCenter,
                                margin: const EdgeInsets.only(left: 120),
                                child: Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white),
                                    child: const Text("Likes", style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500 ,color: Colors.black),
                                      textAlign: TextAlign.center,)),),
                            ],
                          ),

                         const SizedBox(width: 10,),
                          Stack(
                            children: <Widget>[
                              Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 5,
                                margin: const EdgeInsets.all(10),
                                child: Image.asset('assets/tony.jpg', fit: BoxFit.fill,)
                              ),
                              const SizedBox(height: 10,),
                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
                                alignment: Alignment.bottomLeft,
                                margin: const EdgeInsets.only(left: 30),
                                child: Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white),
                                    child: Row(
                                      children: const <Widget>[
                                        Text("Tony", style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500 ,color: Colors.black),
                                          textAlign: TextAlign.center,),
                                        SizedBox(width: 5,),
                                        Icon(Icons.verified, color: Colors.blue, size: 20,),
                                      ],
                                    )),),

                            ],
                          ),
                          const SizedBox(width: 10,),
                          Stack(
                            children: [
                              Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 5,
                                margin: const EdgeInsets.all(10),
                                child: Image.asset('assets/james.jpg',
                                    fit: BoxFit.fill),
                              ),

                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
                                alignment: Alignment.bottomLeft,
                                margin: const EdgeInsets.only(left: 40),
                                child: Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white),
                                    child: Row(
                                      children: const <Widget>[
                                        Text("James", style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500 ,color: Colors.black),
                                          textAlign: TextAlign.center,),
                                        SizedBox(width: 5,),
                                        Icon(Icons.verified, color: Colors.blue, size: 20,),
                                      ],
                                    )),),
                            ],
                          ),

                          const SizedBox(width: 10,),
                          Stack(
                            children: [
                              Card(
                                semanticContainer: true,
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                elevation: 5,
                                margin: const EdgeInsets.all(10),
                                child: Image.asset('assets/jordan.jpg', fit: BoxFit.fill),
                              ),

                              Container(
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),),
                                alignment: Alignment.bottomLeft,
                                margin: const EdgeInsets.only(left: 25),
                                child: Container(
                                    padding: const EdgeInsets.all(6),
                                    decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)), color: Colors.white),
                                    child: Row(
                                      children: const <Widget>[
                                        Text("Jordan", style: TextStyle(fontSize: 19,fontWeight: FontWeight.w500 ,color: Colors.black),
                                          textAlign: TextAlign.center,),
                                        SizedBox(width: 5,),
                                        Icon(Icons.verified, color: Colors.blue, size: 20,),
                                      ],
                                    )),),
                            ],
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 15,),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: TextField(
                        onTap: (){},
                        controller: editingController,
                        decoration: const InputDecoration(
                          labelText: "Search",
                          labelStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w400, color: Colors.grey),
                          hintText: "Search",
                          prefixIcon: Icon(FontAwesomeIcons.search, size: 26, color: Colors.grey,),
                          enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey,),borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                    )
                    ),

                    const SizedBox(height: 15,),
                    Column(
                      children: [
                        ListTile(
                            leading: const CircleAvatar(
                              radius: 29,
                            backgroundImage: AssetImage("assets/jordan.jpg",),
                          ),
                            title: Row(
                              children: const <Widget>[
                                Text("Jordan", style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.w400),),
                                SizedBox(width: 5,),
                                Icon(Icons.verified, color: Colors.blue, size: 20,),

                              ],
                            ),
                            subtitle: const Text("Hii!", style: TextStyle(color: Colors.black, fontSize: 20),),
                            trailing: Column(
                              children: <Widget>[
                                const Text("13:10", style: TextStyle(color: Colors.black, fontSize: 16),),
                                const SizedBox(height: 2),
                                Badge(
                                  badgeContent: const Text("1", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
                                  shape: BadgeShape.circle,
                                  badgeColor: Colors.pink.shade300,
                                  toAnimate: false,
                                  borderRadius: BorderRadius.circular(8),
                                )

                              ],
                            ),
                          ),

                        const SizedBox(height: 5,),
                        Divider(height: 10, thickness: 1, color: Colors.grey.shade200,),
                        ListTile(
                          leading: const CircleAvatar(
                            radius: 29,
                            backgroundImage: AssetImage("assets/tony.jpg",),
                          ),
                          title: Row(
                            children: const <Widget>[
                              Text("Tony", style: TextStyle(color: Colors.grey, fontSize: 26, fontWeight: FontWeight.w400),),
                              SizedBox(width: 5,),
                              Icon(Icons.verified, color: Colors.blue, size: 20,),

                            ],
                          ),
                          subtitle: const Text("Hii!", style: TextStyle(color: Colors.grey, fontSize: 20),),
                          trailing: Column(
                            children: const <Widget>[
                              Text("13:10", style: TextStyle(color: Colors.grey, fontSize: 16),),
                            ],
                          ),
                        ),
                        Divider(height: 10, thickness: 1, color: Colors.grey.shade200,),
                        ListTile(
                          leading: const CircleAvatar(
                            radius: 29,
                            backgroundImage: AssetImage("assets/james.jpg",),
                          ),
                          title: Row(
                            children: const <Widget>[
                              Text("James", style: TextStyle(color: Colors.black, fontSize: 26, fontWeight: FontWeight.w400),),
                              SizedBox(width: 5,),
                              Icon(Icons.verified, color: Colors.blue, size: 20,),

                            ],
                          ),
                          subtitle: const Text("Typing...", style: TextStyle(color: Color(0xFFF48FB1), fontSize: 20, fontStyle: FontStyle.italic),),
                          trailing: Column(
                            children: <Widget>[
                              const Text("13:10", style: TextStyle(color: Colors.black, fontSize: 16),),
                              const SizedBox(height: 2),
                              Badge(
                                badgeContent: const Text("9+", style: TextStyle(fontSize: 13, fontWeight: FontWeight.w500, color: Colors.white)),
                                shape: BadgeShape.circle,
                                badgeColor: Colors.pink.shade300,
                                toAnimate: false,
                                borderRadius: BorderRadius.circular(8),
                              )

                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
      ),

      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
                backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.edit_calendar_outlined),
              label: 'Calendar',
              backgroundColor: Colors.blue,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'Messages',
              backgroundColor: Colors.blue,
            ),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 30,
          onTap: _onItemTapped,
          elevation: 5,
      ),
    );
  }
  }





