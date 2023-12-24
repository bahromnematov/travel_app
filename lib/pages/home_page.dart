import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';

class HomePage extends StatefulWidget {
  static final String id = "home_page";

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedValue = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF031F2A),
        title: Container(
          padding: EdgeInsets.only(top: 12, right: 12, left: 12),
          child: Text(
            "text1".tr(),
            style: TextStyle(color: Colors.white, fontSize: 26),
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                showModalBottomSheet(
                    backgroundColor: Colors.brown,
                    context: context,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25)),
                    isDismissible: false,
                    isScrollControlled: true,
                    builder: (context) {
                      return StatefulBuilder(builder: (context, setState) {
                        return SizedBox(
                          height: 200,
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Padding(
                                  padding: EdgeInsets.all(10),
                                  child: Container(
                                    height: 13,
                                    width: 70,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: Colors.grey.shade300),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  RadioListTile<int>(
                                      title: Text(
                                        "O'zbekcha",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      value: 1,
                                      activeColor: Colors.white,
                                      groupValue: _selectedValue,
                                      onChanged: (int? value) {
                                        setState(() {
                                          _selectedValue = value!;
                                          context.setLocale(Locale("uz", "UZ"));
                                        });
                                      }),
                                  RadioListTile<int>(
                                      title: Text(
                                        "English",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      value: 2,
                                      activeColor: Colors.white,
                                      groupValue: _selectedValue,
                                      onChanged: (int? value) {
                                        setState(() {
                                          _selectedValue = value!;
                                          context.setLocale(Locale("en", "US"));
                                        });
                                      }),
                                ],
                              )
                            ],
                          ),
                        );
                      });
                    });
              },
              child: const Icon(
                Icons.language,
                size: 30,
              ),
            ),
          )
        ],
        elevation: 0,
      ),
      body: Container(
        color: Color(0xFF031F2A),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.only(left: 20, right: 20),
                height: 56,
                decoration: BoxDecoration(
                    color: Color(0xFF263238),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintStyle:
                                TextStyle(color: Colors.grey, fontSize: 18),
                            hintText: "Buxoro"),
                      ),
                    ),
                    Icon(
                      Icons.search,
                      size: 28,
                      color: Colors.white.withOpacity(
                        0.8,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "text3".tr(),
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  itemPost(
                      image: "assets/item_2.jpeg",
                      viloyat: "Qoraqalpog'iston",
                      city: "text4".tr()),
                  SizedBox(
                    width: 12,
                  ),
                  itemPost(
                      image: "assets/item_3.jpeg",
                      viloyat: "Jizzax'iston",
                      city: "text5".tr()),
                  SizedBox(
                    width: 12,
                  ),
                  itemPost(
                      image: "assets/item_4.jpeg",
                      viloyat: "Toshkent",
                      city: "Bochka"),
                  SizedBox(
                    width: 12,
                  ),
                  itemPost(
                      image: "assets/item_2.jpeg",
                      viloyat: "Qoraqalpog'iston",
                      city: "Orol Dengizi"),
                  SizedBox(
                    width: 12,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Text(
                "text2".tr(),
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
            itemAll(
                image: "assets/item_4.jpeg", title: "Zomin", city: "Jizzax"),
            itemAll(
                image: "assets/item_2.jpeg", title: "Zomin", city: "Jizzax"),
            itemAll(
                image: "assets/item_3.jpeg", title: "Zomin", city: "Jizzax"),
            itemAll(
                image: "assets/item_5.jpeg", title: "Zomin", city: "Jizzax"),
            itemAll(
                image: "assets/item_7.jpeg", title: "Zomin", city: "Jizzax"),
          ],
        ),
      ),
    );
  }

  Widget itemPost({image, city, viloyat}) {
    return AspectRatio(
      aspectRatio: 1.5 / 2,
      child: Container(
        height: 300,
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image:
                DecorationImage(image: AssetImage(image), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.all(12),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.1),
              ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                city,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                viloyat,
                style: TextStyle(
                    color: Colors.white.withOpacity(0.6),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget itemAll({image, title, city}) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 160,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          )),
      child: Container(
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(begin: Alignment.bottomRight, colors: [
              Colors.black.withOpacity(0.8),
              Colors.black.withOpacity(0.3),
              Colors.black.withOpacity(0.2),
              Colors.black.withOpacity(0.1),
            ])),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              city,
              style: TextStyle(color: Colors.white.withOpacity(0.7)),
            ),
          ],
        ),
      ),
    );
  }
}
