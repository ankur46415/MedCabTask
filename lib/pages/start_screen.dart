import 'package:flutter/material.dart';

import '../model/CheckBoxList.dart';
import '../model/CheckBoxQuestionsList.dart';

class StartScreen extends StatefulWidget {
  @override
  _StartScreen createState() => _StartScreen();
}
class _StartScreen extends State<StartScreen> {

  Widget SingleProducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 230,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Expanded(
                flex: 3,
                child: Image.asset('assets/images/amd.png')
            ),
              Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Paediatric Nurse',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                      ]
                  )
              ),
              )]
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text('Book Manpower'),
          actions: [
            CircleAvatar(
              radius: 18,
              backgroundColor: Colors.white,
              child: Icon(Icons.search,size: 17,color: Colors.black,),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white,
                child: Icon(Icons.shopping_bag,size: 17,color: Colors.black,),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
          child: ListView(
            //page1
            children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image:AssetImage('assets/images/newtop.jpg')
                  ),
                  color: Colors.cyan,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    Expanded(child: Container(
                      child:
                      Padding(
                        padding: const EdgeInsets.only(left: 20,bottom: 10),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(bottomRight: Radius.circular(30),bottomLeft: Radius.circular(30)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),), Expanded(child: Container(
                    )),
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 50,
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.lightBlueAccent,
                        child: Icon(Icons.call,size: 20,color: Colors.black,),
                      ),
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.lightBlueAccent,
                        child: Icon(Icons.chat,size: 20,color: Colors.black,
                        ),
                      ),
                      CircleAvatar(
                        radius: 18,
                        backgroundColor: Colors.lightBlueAccent,
                        child: Icon(Icons.history,size: 20,color: Colors.black,),
                      ),
                      //Text('Whatshapp',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                      //Text('History',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Book Manpower By Category',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    Text('view all',style: TextStyle(color: Colors.blue),),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SingleProducts(),
                    SingleProducts(),
                    SingleProducts(),
                    SingleProducts(),
                    SingleProducts(),
                    SingleProducts(),
                    SingleProducts(),
                    SingleProducts(),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SingleProducts(),
                    SingleProducts(),
                    SingleProducts(),
                    SingleProducts(),
                    SingleProducts(),
                    SingleProducts(),
                    SingleProducts(),
                    SingleProducts(),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              SectionMore()
              // Add more sections as needed
            ],
          ),
        )
    );
  }
}
class SectionFour1 extends StatefulWidget {
  @override
  _SectionFour1 createState() => _SectionFour1();
}
class _SectionFour1 extends State<SectionFour1> {

  // List<bool> booleanList = [true, false, true, true, false];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
          child: Text(
              'How does the process of Manpower booking function ?',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900)
          ),
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: checkListData.length,
          itemBuilder: (context, index) {
            return CheckBoxes(index);
          },
        )
      ],
    );
  }

  Widget CheckBoxes(int index){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Checkbox(
              activeColor: const Color(0xFFF87369),
              shape: const CircleBorder(),
              value: checkListData[index].enabled,
              onChanged: (bool? value) {
                setState(() {
                  checkListData[index].enabled = value!;
                });
              },
            ),
            Image(
              width: 10,
              image: AssetImage("assets/images/dotted_line.png"),
            ),
          ],
        ),
        Expanded(child: Container(
          margin: EdgeInsets.all(8.0),
          child: Text(
            checkListData[index].data,
            style: TextStyle(fontSize: 16),
          ),
        )),
      ],
    );
  }
}

class SectionFour2 extends StatefulWidget {
  @override
  _SectionFour2 createState() => _SectionFour2();
}
class _SectionFour2 extends State<SectionFour2> {
  // List<bool> booleanList = [true, false, true, true, false];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemCount: questionsList.length,
          itemBuilder: (context, index) {
            return CheckBoxes(index);
          },
        )
      ],
    );
  }
  void _onSearchButtonPressed(int index){
    setState(() {
      questionsList[index].enabled = !questionsList[index].enabled;
    });
  }

  Widget CheckBoxes(int index){
    return Column(
      children: [
        Container(
          child: Row(
            children: [
              Expanded(
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: Text(questionsList[index].data,
                    style: TextStyle(fontSize: 12,fontWeight: FontWeight.w800,color: Colors.black)),
              )),
              IconButton(
                  onPressed: (){_onSearchButtonPressed(index);},
                  icon: Icon(
                    (questionsList[index].enabled)?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down,
                    color: Colors.black,
                  ))
            ],
          ),
        ),
        (questionsList[index].enabled)?
        Container(
          margin: EdgeInsets.only(left: 10,bottom: 15),
          alignment: Alignment.centerLeft,
          child: Text(
              questionsList[index].fullData,
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.normal,color: Colors.grey)
            ),
        ):Container(),
        (index < questionsList.length-1)?
        Container(
          height: 2,
          margin: EdgeInsets.only(left: 10,right: 10),
          decoration: BoxDecoration(
            color: Color(0xffe7e7e7)
          ),
        ):Container()
      ],
    );
  }
}

class SectionMore extends StatefulWidget {
  const SectionMore({super.key});

  @override
  _SectionMore createState() => _SectionMore();
}
class _SectionMore extends State<SectionMore> {
  Widget SingleProducts(){
    return  Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        height: 230,
        width: 160,
        decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Expanded(
                flex: 3,
                child: Image.asset('assets/images/amd.png')
            ),
              Expanded(child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Paediatric Nurse',style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
                      ]
                  )
              ),
              )]
        )
    );
  }
  Widget Page2Productss(){
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 7),
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(180),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 5),
          child:Text('Paediatric Nurse',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //page2
        Container(
          margin: EdgeInsets.all(10),
          child: Text(
              'Check Medico Healthcare Benifits',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900)
          ),
        ),
        Container(
          height: 190,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage('assets/images/medi.jpg')
            ),
            color: Colors.cyan,
          ),
        ),SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Popular Categories',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              Text('view all',style: TextStyle(color: Colors.lightBlueAccent),),
            ],
          ),
        ),
        SizedBox(height: 8,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Page2Productss(),
              Page2Productss(),
              Page2Productss(),
              Page2Productss(),
              Page2Productss(),
              Page2Productss(),
            ],
          ),
        ),
        SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Page2Productss(),
              Page2Productss(),
              Page2Productss(),
              Page2Productss(),
              Page2Productss(),
              Page2Productss(),
            ],
          ),
        ),
        SizedBox(height: 8,),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Top Rated Manpower',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
              Text('view all',style: TextStyle(color: Colors.blue),),
            ],
          ),
        ),
        SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(
                          color: Colors.lightBlueAccent,
                          borderRadius: BorderRadius.circular(10)
                      ),
                      child:Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Expanded(
                              flex:1,
                              child: Center(child: Image.asset('assets/images/nurse.jpg'))
                          ),
                            Expanded(child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Paediatric Nurse',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                                      Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                        style: TextStyle(fontSize: 9,color: Colors.black,fontWeight: FontWeight.normal),),SizedBox(height: 6,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: 20,
                                              width: 70,
                                              child: ElevatedButton(onPressed: (){},
                                                  child: Row(children: [
                                                    Expanded(child: Center(child: Text('Add To Cart'))),
                                                    // Expanded(child: Icon(Icons.arrow_drop_down,size: 10,color: Colors.white))
                                                  ],
                                                  )
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ]
                                )
                            ),
                            )]
                      ),
                    ),
                    SizedBox(width: 10,height: 10,),
                    Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Expanded(
                              flex:1,
                              child: Image.asset('assets/images/nurse.jpg')
                          ),
                            Expanded(child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Paediatric Nurse',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                                      Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                        style: TextStyle(fontSize: 9,color: Colors.black,fontWeight: FontWeight.normal),),
                                      SizedBox(height: 6,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: 20,
                                              width: 70,
                                              child: ElevatedButton(onPressed: (){},
                                                  child: Row(children: [
                                                    Expanded(child: Center(child: Text('Add To Cart'))),
                                                    // Expanded(child: Icon(Icons.arrow_drop_down,size: 10,color: Colors.white))
                                                  ],
                                                  )
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ]
                                )
                            ),
                            )]
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 15,),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [Expanded(
                          flex:1,
                          child: Image.asset('assets/images/nurse.jpg'),
                        ),
                          Expanded(child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Paediatric Nurse',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                                Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                  style: TextStyle(fontSize: 9,color: Colors.black,fontWeight: FontWeight.normal),),
                                SizedBox(height: 6,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Container(
                                        height: 20,
                                        width: 70,
                                        child: ElevatedButton(onPressed: (){},
                                            child: Row(children: [
                                              Expanded(child: Center(child: Text('Add To Cart'))),
                                              // Expanded(child: Icon(Icons.arrow_drop_down,size: 10,color: Colors.white))
                                            ],
                                            )
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          )
                        ],
                      ),
                    ),

                    SizedBox(width: 10,height: 10,),
                    Container(
                      height: 220,
                      width: 160,
                      decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child:Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Expanded(
                              flex:1,
                              child: Image.asset('assets/images/nurse.jpg')
                          ),
                            Expanded(child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Paediatric Nurse',style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                                      Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
                                        style: TextStyle(fontSize:9,color: Colors.black,fontWeight: FontWeight.normal),),
                                      SizedBox(height: 6,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: Container(
                                              height: 20,
                                              width: 70,
                                              child: ElevatedButton(onPressed: (){},
                                                  child: Row(children: [
                                                    Expanded(child: Center(child: Text('Add To Cart'))),
                                                    // Expanded(child: Icon(Icons.arrow_drop_down,size: 10,color: Colors.white))
                                                  ],
                                                  )
                                              ),
                                            ),
                                          ),
                                        ],
                                      )
                                    ]
                                )
                            ),
                            )]
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 12,),
        Container(
          height: 160,
          decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image:AssetImage('assets/images/medd.jpg')
            ),
            color: Colors.cyan,
          ),
        ),
        SizedBox(height: 10,),
        Container(
          child: Row(
            children: [
              Text('How does the process of Manpower booking function?.',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 13),)
            ],
          ),
        ),

        // page4
        SectionFour1(),
        Container(
          height: 5,
          margin: EdgeInsets.only(left: 10,right: 10),
          decoration: BoxDecoration(
              color: Color(0xffe7e7e7)
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 25,bottom: 5),
          child: Text(
              'Frequently Asked questions',
              style: TextStyle(fontSize: 18,fontWeight: FontWeight.w900)
          ),
        ),
        SectionFour2(),
        Container(
          height: 6,
          margin: EdgeInsets.only(left: 10,right: 10),
          decoration: BoxDecoration(
              color: Color(0xffe7e7e7)
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20,left: 10,top: 15),
          child: Row(
            children: [
              Expanded(child: Text(
                  "We ensure our customers leave with a smile on their faces!",
                  style: TextStyle(
                      fontSize: 18,fontWeight: FontWeight.w900,color: Colors.black)
              )),
              Icon(
                  Icons.emoji_emotions,
                color: Color(0xfffcd713),
              )
            ],
          ),
        ),

        //page5
        const Center(
            child: CircleAvatar(
              backgroundColor: Color(0xfffed8ff),
              radius: 43,
              child: Icon(Icons.person,size: 45,),
            )
        ),
        const Center(
            child: Padding(padding: EdgeInsets.only(top: 10),
              child: Text(
                  "Ankur Maurya",
                  style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800,color: Colors.black))
              ,)
        ),
        const Center(
            child: Padding(padding: EdgeInsets.only(top: 1),
              child: Text(
                  "Lucknow",
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300,color: Colors.blueGrey))
              ,)
        ),
        const Center(
            child: Padding(padding: EdgeInsets.all(10),
              child: Text(
                  "\"It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters\"",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w300, color: Colors.blueGrey))
              ,)
        )
      ],
    );
  }

}



