
import 'package:dars15/second_page.dart';
import 'package:dars15/game_page.dart';
import 'package:dars15/task_page.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MaterialApp(
    home: TaskPage(),
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int textLength;
  late TextEditingController _namecontroller;
  late TextEditingController _emailcontroller;
  late TextEditingController _passwordcontroller;
  late GlobalKey<FormState> _formKey;
  late bool isError;
  @override
  void initState() {
    _namecontroller = TextEditingController();
    isError = false;
    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("inputs"),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 200,
                  width: 400,
                  color: Colors.amber,
                  child: Text(
                    _namecontroller.text,
                    style: TextStyle(fontSize: 25),
                  ),
                ),
                TextFormField(
                  onChanged: (value) {
                    if (_namecontroller.text.contains('a')) {
                      isError = true;
                      setState(() {});
                    } else if (!_namecontroller.text.contains('a')) {
                      isError = false;
                      setState(() {});
                    }
                  },
                  controller: _namecontroller,
                  onFieldSubmitted: (value) {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => SecondPage())));
                    }
                  },
                  validator: (value) {
                    if (value!.contains('a')) {
                      return "ichida a bor";
                    }
                  },
                  decoration: InputDecoration(
                      errorText: isError ? "ichida a bor" : null,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "ism kirgazing ",
                      hintText: "example Ruslan"),
                ),
                TextFormField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                    
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Email kirgazing ",
                      hintText: "example@gmail.com "),
                ),
                TextFormField(
                  controller: _emailcontroller,
                  decoration: InputDecoration(
                    
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: "Passvord kirgazing ",
                      hintText: "********"),
                ),
                ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState!.validate()){
                      Navigator.push(context, MaterialPageRoute(builder: ((context) => SecondPage())));
                    }

                  }, child: Text("enter"),
                
                
                ),
              ],
            )),
      ),
    );
  }
}
