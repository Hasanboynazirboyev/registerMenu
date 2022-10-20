import 'package:dars15/game_page.dart';
import 'package:dars15/second_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskPage extends StatefulWidget {
  const TaskPage({super.key});

  @override
  State<TaskPage> createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  late TextEditingController _namecontroller;
  late TextEditingController _emailcontroller;
  late TextEditingController _numbercontroller;
  late TextEditingController _passwordcontroller;
  late TextEditingController _adresscontroller;
  late TextEditingController _citycontroller;
  late TextEditingController _areacontroller;
  late bool isActive;

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    isActive = true;
    _namecontroller = TextEditingController();
    _emailcontroller = TextEditingController();
    _passwordcontroller = TextEditingController();
    _adresscontroller = TextEditingController();
    _citycontroller = TextEditingController();
    _numbercontroller = TextEditingController();
    _areacontroller = TextEditingController();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 63, 11, 112),
        title: Text("TaskPage"),
        actions: [
          IconButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: ((context) => GamePage())));
                }
              },
              icon: Icon(Icons.search)),
          PopupMenuButton(itemBuilder: (context) {
            return [
              PopupMenuItem(value: 1, child: Text("1")),
              PopupMenuItem(value: 2, child: Text("2")),
            ];
          }),
        ],
      ),
      body: Form(
          key: _formKey,
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 330,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.length < 2) {
                            return "ism kirgazing";
                          }
                        },
                        controller: _namecontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white24,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: "Person",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.phone),
                    SizedBox(
                      width: 180,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.length < 9) {
                            return "raqam 9 tadan kam bo'lmasin";
                          }
                        },
                        keyboardType: TextInputType.phone,
                        controller: _numbercontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white24,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: "Phone",
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 130,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.length < 2) {
                            return "Area kirgazing";
                          }
                        },
                        
                        controller: _areacontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white24,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: "Area",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.location_on),
                    SizedBox(
                      width: 330,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.length < 2) {
                            return "adress kirgazing";
                          }
                        },
                        controller: _adresscontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white24,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: "Adress",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.location_city),
                    SizedBox(
                      width: 330,
                      child: TextFormField(
                        validator: (value) {
                          if (value!.length < 2) {
                            return "joy kirgazing";
                          }
                        },
                        controller: _citycontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white24,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: "city",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.email),
                    SizedBox(
                      width: 330,
                      child: TextFormField(
                        validator: (value) {
                          String regex =
                              "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*\$";
                          if (!RegExp(regex).hasMatch(value!)) {
                            return "hato email";
                          }
                        },
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                          fillColor: Colors.white24,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: "Email",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.password),
                    SizedBox(
                      width: 330,
                      child: TextFormField(
                        obscureText: isActive ? false : true,
                        validator: (value) {
                          if (value!.length < 6) {
                            return "6 ta dan kam bo'lmasin";
                          }
                        },
                        controller: _passwordcontroller,
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: isActive
                                ? Icon(Icons.remove_red_eye_outlined)
                                : Icon(CupertinoIcons.eye_slash),
                            onPressed: () {
                              isActive = !isActive;
                              setState(() {});
                            },
                          ),
                          fillColor: Colors.white24,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          labelText: "password",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 50,
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text("Qabul qilindi")));
                    }
                  },
                  child: Text("enter"),
                ),
              ),
            ],
          )),
    );
  }
}
