import 'package:flutter/material.dart';
import 'package:module_08_flutter_04/style.dart';

class ToDoPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return ToDoPageView();
  }
}

class ToDoPageView extends State<ToDoPage>{

  List ToDoList = [];
  String item="";

  MyInputOnChange(content){
    setState(() {
      item=content;
    });
  }

  AddItem(){
    setState(() {
      ToDoList.add({"item":item});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo"),
      ),
      body: Padding(
        padding:  EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            children: [
              Expanded(
                flex: 10,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 70,
                          child: TextFormField(onChanged: (content){MyInputOnChange(content);}, decoration: AppInputDecoration("List Here"),)),
                      SizedBox(width: 3,),
                      Expanded(
                          flex: 30,
                          child: ElevatedButton(onPressed: (){AddItem();}, child: Text("Add"),style: AppButtonStyle(),))
                    ],
                  )
              ),
              Expanded(
                flex: 90,
                  child: ListView.builder(
                    itemCount: ToDoList.length,
                      itemBuilder: (context, index){
                        return Card(
                          child: sizebox50(
                            Row(
                              children: [
                                Expanded(
                                    flex: 90,
                                    child: Text(ToDoList[index]['item'].toString())
                                ),
                                Expanded(
                                    flex: 10,
                                    child: TextButton(onPressed: (){},child: Icon(Icons.delete))
                                ),
                              ],
                            )
                          )
                        );
                      }
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }
}