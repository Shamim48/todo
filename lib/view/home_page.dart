import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:todo/view/task_details.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    taskDialog() {
      return showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(20.0)), //this right here
              child: Container(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Write your task'),
                      ),
                      SizedBox(
                        width: 320.0,
                        child: RaisedButton(
                          onPressed: () {
                            dispose();
                          },
                          child: Text(
                            "Save",
                            style: TextStyle(color: Colors.white),
                          ),
                          color: const Color(0xFF1BC0C5),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          });
    }

      return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return buildTaskItem(context, index);

                  }
                )),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: taskDialog,
          tooltip: 'Task dialog',
          child: const Icon(Icons.add),
        ), // This trailing comma makes auto-formatting nicer for build methods.
      );
    }
  }

Widget buildTaskItem(BuildContext context, int index) {
  return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return  TaskDetails(index, "Title details","23-05-22");
        }));
      },
      child:  SizedBox(
          height: 90,
          child:                               Expanded(
            //flex: 6,
              child: Container(
                height: 90,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white /*noticeProvider.getColorIndex == 4
                                    ? colorUpdate(0)
                                    : dynamicColor(noticeProvider.getColorIndex + 1)*/,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(12),
                        bottomLeft: Radius.circular(12),
                        bottomRight: Radius.circular(12)),
                boxShadow:[ BoxShadow(
                  color: Colors.black38.withOpacity(0.5),
                  blurRadius: 2,
                  offset: Offset(2, 2), // Shadow position
                ),
                ]
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: Container(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: EdgeInsets.only(right: 5),
                              // width: MediaQuery.of(context).size.width/2.2,
                              child: Text(
                                "Task ${index+1}",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),

                            SizedBox(height: 8,),
                            Expanded(
                              child: Container(
                                // width: MediaQuery.of(context).size.width/2.2,
                                child: Text(
                                  "23-05-22",
                                  style: TextStyle(
                                      color: Colors.black54,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 12),
                                  overflow: TextOverflow.ellipsis,
                                ),
                                /*Text(
                                          "${noticeProvider!.noticeDataList![index]!.notice}",
                                          maxLines:2,
                                          style:  TextStyle(
                                              color: Colors.white,
                                              fontSize: 15,
                                              overflow: TextOverflow.clip),
                                        ),*/
                              ),
                            )

                          ],
                        ),
                      ),
                    ),
                    const Center(
                      child: Icon(
                        Icons.close,
                        color: Colors.redAccent,
                      ),
                    )
                  ],
                ),
              ))
      )
  );

}











