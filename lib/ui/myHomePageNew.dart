import 'package:app/service/ServiceApi.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

import '../util.dart';
import 'SecondWidget.dart';

class MyHomePageNew extends StatelessWidget {
  final String title;
  const MyHomePageNew({Key? key, required this.title}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(title),
          ),
          bottomNavigationBar: BottomNavigationBar(items: const [
            BottomNavigationBarItem(icon: Icon(Icons.add), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.filter), label: '')
          ]),
          body: Center(
              child: Stack(
                children: [
                  Positioned(
                    left: MediaQuery.of(context).size.width * 0.1,
                    top: 20,

                    child: Container(
                      height: 90,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.6),
                          borderRadius: BorderRadius.circular(12)),

                      child: GestureDetector(
                          onDoubleTap: () =>
                              Navigator.of(context).push(PageTransition(
                                  child: SecondWidget(),
                                  type: PageTransitionType.leftToRight)),

                          child: Center(
                            child: Text(
                              '${getRandom()}',
                              style: const TextStyle(color: Colors.black),
                            ),
                          )

                      ),
                    ),
                  ),
                  Positioned(
                      top: 20,
                      right: 20,
                      child: Container(
                        height: 100,
                        width: 100,
                        // child: CupertinoButton(
                        //   //именованая навигация
                        //   // onPressed: ()=>Navigator.of(context).pushNamed('/secondScreen'),
                        //   //навигация
                        //   // onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder:(context)=>SecondWidget())),
                        //   //навигация с анимацией
                        //   onPressed: () =>
                        //       Navigator.of(context).push(PageTransition(
                        //           child: SecondWidget(),
                        //           type: PageTransitionType.leftToRight)),
                        //   color: Colors.blue,
                        //   borderRadius: BorderRadius.circular(12.0),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: SizedBox(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child:
                                // const Text('test',style: TextStyle(color: Colors.green)),
                                Image.network(
                                  'http://placekitten.com/200/300',
                                  fit: BoxFit.cover,
                                ))),
                      )),
                  Positioned(
                      top: 120,
                      right: 20,
                      child: Container(
                        height: 100,
                        width: 100,
                        margin: const EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
                        // child: CupertinoButton(
                        //   //именованая навигация
                        //   // onPressed: ()=>Navigator.of(context).pushNamed('/secondScreen'),
                        //   //навигация
                        //   // onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder:(context)=>SecondWidget())),
                        //   //навигация с анимацией
                        //   onPressed: () =>
                        //       Navigator.of(context).push(PageTransition(
                        //           child: SecondWidget(),
                        //           type: PageTransitionType.leftToRight)),
                        //   color: Colors.blue,
                        //   borderRadius: BorderRadius.circular(12.0),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(12.0)),
                        child: SizedBox(
                            height: 100,
                            width: 100,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child:
                                // const Text('test',style: TextStyle(color: Colors.green)),
                                Image.network(
                                  'http://placekitten.com/200/300',
                                  fit: BoxFit.cover,
                                ))),
                      )),

                ],
              )),
        ));
  }

}
