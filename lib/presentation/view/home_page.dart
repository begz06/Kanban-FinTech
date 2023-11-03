import 'package:flutter/material.dart';
import 'package:kanban_mini/domain/constants/size.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Image.asset('assets/logo.png'),
        ),
        title: Row(
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.4,
              child: Text(
                "Platform Launch",
                style: TextStyle(
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0),
              ),
            ),
            Icon(Icons.keyboard_arrow_down_rounded)
          ],
        ),
        centerTitle: false,
        actions: [
          InkWell(
            child: InkWell(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                'Add New Task',
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                          content: SizedBox(
                            height: context.height * 0.7,
                            width: context.width * 0.8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Title ',
                                  style: TextStyle(color: Colors.black87),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    height: 40,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                        hintText: 'e.g Take coffee break',
                                        border: OutlineInputBorder(),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Description',
                                  style: TextStyle(color: Colors.black87),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: SizedBox(
                                    height: 100,
                                    child: TextFormField(
                                      maxLines: 3,
                                      decoration: InputDecoration(
                                          border: OutlineInputBorder(),
                                          hintText:
                                              'e.g. It’s always good to take a break. This 15 minute break will  recharge the batteries a little.'),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Subtasks',
                                  style: TextStyle(color: Colors.black87),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText: 'e.g. Make coffee',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.cancel))
                                  ],
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                            hintText:
                                                'e.g. Drink coffee & smile',
                                            border: OutlineInputBorder(),
                                          ),
                                        ),
                                      ),
                                    ),
                                    IconButton(
                                        onPressed: () {},
                                        icon: Icon(Icons.cancel))
                                  ],
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    
                                    child: Center(
                                      child: Text("+ Add New Subtask",),
                                    )),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text("Status"),

                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: 'ToDo'
                                        ),
                                      ),
                                    )
                              ],
                            ),
                          ),
                        ));
              },
              child: Container(
                child: Center(
                    child: Icon(
                  Icons.add,
                  color: Colors.white,
                )),
                height: 42,
                width: 58,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xff635FC7)),
              ),
            ),
          ),
          PopupMenuButton(
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 'edit',
                child: Text("Edit Board"),
              ),
              PopupMenuItem(
                value: 'delete',
                child: Text(
                  "Delete Board",
                  style: TextStyle(color: Colors.red),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
