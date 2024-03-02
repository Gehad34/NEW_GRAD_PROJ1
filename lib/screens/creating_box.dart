import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_grad_proj/widgets/default%20text%20field.dart';

class CreateBox extends StatelessWidget {
  CreateBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
            maintainBottomViewPadding: true,
            child: Container(
                child: Column(children: [
              const Padding(
                  padding: EdgeInsets.only(
                bottom: 50,
              )),
              Row(children: [
                const SizedBox(
                  width: 100,
                ),
                const Text(
                  'CreatePost',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                      fontSize: 30),
                ),
                const SizedBox(
                  width: 35,
                ),
                Container(
                  child: TextButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll<Color>(Colors.blue),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Post',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ]),
              /*  Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  height: 135,
                  width: 400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Colors.grey[300]),
                  child: Padding(
                    padding: const EdgeInsets.all(30),
                    child: TextFormField(
                      maxLines: 5,
                      autocorrect: true,
                      decoration: const InputDecoration(
                          hintText: 'what is in your head?',
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 20)),
                      keyboardType: TextInputType.text,
                      keyboardAppearance: Brightness.dark,
                    ),
                  ),
                ),
              ),*/
              Padding(
                padding: const EdgeInsets.only(
                    left: 15, right: 15, top: 0, bottom: 0),
                child: DefaultTextField(
                  controller: TextEditingController(),
                  keyboardtype: TextInputType.text,

                  labletext: "What Is IN Your Head....",
                  fillcolor: Color.fromARGB(255, 229, 229, 229),
                  // suffixicon: ,
                  height: 170,
                  weight: double.infinity,
                ),
              ),
              Container(
                  child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: Column(
                  children: [
                    const Text(
                      'ShareContent',
                      style: TextStyle(
                          fontWeight: FontWeight.normal, fontSize: 20),
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.camera_alt_outlined,
                              color: Colors.blue,
                              size: 30,
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'Camera',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.edit_document,
                              color: Colors.blue,
                              size: 30,
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'Document',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.photo_album_outlined,
                              color: Colors.blue,
                              size: 30,
                            )),
                        const SizedBox(
                          width: 15,
                        ),
                        const Text(
                          'Media',
                          style: TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              )),
            ]))));
  }
}
