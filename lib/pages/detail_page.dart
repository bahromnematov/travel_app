import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/widgets/global.dart';

class DetailPage extends StatefulWidget {
  static final String id = "detail_page";

  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF031F2A),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            expandedHeight: 220,
            floating: true,
            pinned: true,
            snap: true,
            elevation: 50,
            backgroundColor: Colors.grey,
            flexibleSpace: FlexibleSpaceBar(
                background: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(Global.image), fit: BoxFit.cover),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  )),
            )),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.all(30),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "text6".tr(),
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      Global.text_orol,
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 20,
                          fontWeight: FontWeight.w300),
                    ),
                    SizedBox(height: 40,),
                    Container(
                      height: 50,
                      child: Row(
                        children: [
                          Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 12),
                                height: 46,
                            margin: EdgeInsets.only(right: 12),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.5, color: Colors.cyanAccent),
                                borderRadius: BorderRadius.circular(14)),
                                child: Row(
                                  children: [
                                    Icon(Icons.pin_drop,size: 25,color: Colors.cyanAccent,),
                                    SizedBox(width: 12,),
                                    Text("Joylashuv",style: TextStyle(color: Colors.cyanAccent,fontSize: 16),)
                                  ],
                                ),
                          )


                          ),
                          Expanded(
                              child: Container(
                                padding: EdgeInsets.only(left: 12),
                                height: 46,
                            margin: EdgeInsets.only(left: 12),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1.5, color: Colors.cyanAccent),
                                borderRadius: BorderRadius.circular(14)),
                                child: Row(
                                  children: [
                                    Icon(Icons.language,size: 25,color: Colors.cyanAccent,),
                                    SizedBox(width: 12,),
                                    Text("Manba",style: TextStyle(color: Colors.cyanAccent,fontSize: 16),)
                                  ],
                                ),
                          )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
