
import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:flip/firstgamepage.dart';
//var ss = Firstg.rett();

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
// this is for windows manipulation
//Firstg createState() =>  Firstg();

int x = 0;
// this is for gaming
int g =0;
bool s;
int p=0;
int m=0;
int ma =0;
reset()
{
  s = false;
  g =0;
  x = 0;
  p=0;
  m=0;
  ma =0;
}

void menu()
{
  setState(() {
    if(s == false)
  {
    reset();
    s = true;
  }
  else{
    reset();
    s = false;
  }
      print("this ist ested $s");
    });
}

mathtest()
{
  setState(() {
    reset();
    m = 1;
    print(m);
    });
}
nextJour(){

}
markredPlace()
{

}
game()
{
  setState(() {
  x = 1;
  s = false;
});
}
//Everything of 1st game started here.
firstgame(){
  setState(() {
    s = false;
    x = 0;
    g = 1;
    });
  print("you are going to open first game");
}
playgame()
{
  setState(() {
      reset();
      opt();
      p =1;
    });
}
List<List<String>>countandcap1 = [["India","Delhi"],["Pakistan","Islamabad"],["China","Bijing"]
,["Afganistan","Kabul"],["Albaniya","Tirana"],["Algeria","Algeries"],["Andorra","Ando. la. villa"]
,["Angola","Launda"],["Argentina","Buenos Aires"],["Armenia","Yerevan"],["Australia","Canberra"],
["Austria","Vienna"],["Azerbaijan","Baku"],["Bahamas","Nassau"],["Bahrain","Manama"],
["Bangladesh","Dhaka"],["barbados","BridgeTown"],["Belarus","Minsk"],["Belgium","Brussels"]
,["Belize","Belmopan"],["Benin","Porto-Novo"],["Bhutan","Thimphu"],["Bolivia","Sucre"],["Bosnia &h","Sarajevo"],["Botswana","Gaborone"],
["Brazil","Brasilla"],["Brunei","bandar S.sbsegawan"],["Bulgariya","Sofia"] ,["Burkina","ouagadougou"],["Burundi","Gitega"],["cabo Verde","Praia"],
["Cambodia","Phnom Penh"],["Cameroon","Yaounde"],["Canada","Ottawa"]
,["C.A. Republic","Bangue"],["Chad","N'Djmena"],["Chile","Santiago"],["Colombia","Bogota"],
["Comoros","Moroni"],["Comgo","Kinshasa"],["Costa Rica","San Jose"],["Coted'lvoire","Yamooussoukro"],
["Croatia","Zagreb"] ,["Cuba","Havana"] ,["Cyprus","Nicosia"] ,["Czechia","prague"]   ];


List<Map<String, String>>countandcap= [{"India":"Delhi1"},{"pakistan":"islamabad"} ,{"a1":"a2"},{"b":"b1"}
,{"c":"c1"},{"d":"d1"},{"e":"e1"},{"f":"f1"},{"g":"g1"},{"h":"h1"},{"i":"i1"},{"j":"j1"},{"k":"k1"},{"l":"l1"},{"m":"m1"}];
//var countandcap =[{"India":"Delhi"},{"pakistan":"islamabad"}];
List<String>cap;
String countryName;
int score =0;
int rndcontr =0;
int count =0;
int countl =0;
String response = "Let's Play Game";
opt(){
  setState(() {
      
   
  Random  rnd = new Random();
  rndcontr = rnd.nextInt(countandcap1.length);
  int rndcontr1 = rnd.nextInt(countandcap1.length);
  int rndcontr2 = rnd.nextInt(countandcap1.length);
  int rndcontr3 = rnd.nextInt(countandcap1.length);
  int randoption = rnd.nextInt(3);
  countryName = countandcap1[rndcontr][0];
  if(randoption ==0){
  cap = [countandcap1[rndcontr][1],countandcap1[rndcontr1][1],countandcap1[rndcontr2][1],countandcap1[rndcontr3][1]];
  }else if(randoption ==1){cap = [countandcap1[rndcontr1][1],countandcap1[rndcontr][1],countandcap1[rndcontr2][1],countandcap1[rndcontr3][1]];
  }else if(randoption ==2){cap = [countandcap1[rndcontr2][1],countandcap1[rndcontr1][1],countandcap1[rndcontr][1],countandcap1[rndcontr3][1]];
  }else if(randoption ==3){cap = [countandcap1[rndcontr3][1],countandcap1[rndcontr1][1],countandcap1[rndcontr2][1],countandcap1[rndcontr][1]];
  }
 
  count++;
  countl = 20-count;
  if(count == 20)
  {
    score = 0;
    count =0;
    response = "Your Game Again Started";
  }
  print(score);
   });
}
opt1(){
  if(countandcap1[rndcontr][1] == cap[0])
  {
    response = "Congrats 1 Point Added";
    score++;
  }else{
  response = "O'h You Missed";
  }
  opt();
}
opt2(){
  if(countandcap1[rndcontr][1] == cap[1])
  {
    response = "Congrats 1 Point Added";
    score++;
  }else{
  response = "O'h You Missed";
  }
  opt();
}
opt3(){
  if(countandcap1[rndcontr][1] == cap[2])
  {
    response = "Congrats 1 Point Added";
    score++;
  }else{
  response = "O'h You Missed";
  }
  opt();
}
opt4(){
  if(countandcap1[rndcontr][1] == cap[3])
  {
    response = "Congrats 1 Point Added";
    score++;
  }else{
  response = "O'h You Missed";
  }
  opt();
}
closeGame()
{
  setState(() {
    reset();
  g =1;  
    });
}
restartGame()
{
  setState(() {
    response = "Let's Play Game";
      score =0;
      countl =20;
    });
}

/////////
highScore()
{

}
knowMore()
{
  setState(() {
      
    });
}
back()
{
  setState(() {
      reset();
      x =1;
    });

}
back0()
{
  setState(() {
    reset();
      s = true;
    });
}



//everything of 1st game ended.
//everything of 1st game ended.


// second game started
// second game started
//playgame2,highScore2,knowMore2,back2

secondgame(){
  setState(() {
      reset();
      g =2;
    });
}
playgame2(){
  setState(() {
      reset();
      p = 2;
    });
}
highScore2(){}
knowMore2(){}
back2(){
  setState(() {
      reset();
      x=1;
    });
}
int imageindex =0;
int im=0;
int score2 =0;
int count2 =20;
List<int>imindex = [1,1,1,2];
String response2  = "Your Game is startedl";
List<int>imindex1,imindex2,imindex3,imindex4;
void zerothim(){
  setState(() {
      Random  rnd = new Random();
      imageindex = rnd.nextInt(20);
      im = rnd.nextInt(3);
      if(imageindex%2 == 0)
      {
        imageindex = imageindex +1;
      }
    /*   imindex1 = 
      imindex2 = 
      imindex3= 
      imindex4 =  */
      if(im==0)
      {
        imindex = [imageindex,imageindex+1,imageindex+1,imageindex+1];
      }
      else if(im==1)
      {
        imindex = [imageindex+1,imageindex,imageindex+1,imageindex+1];
      }
     else if(im==2)
      {
        imindex = [imageindex+1,imageindex+1,imageindex,imageindex+1];
      }
     else
      {
        imindex = [imageindex+1,imageindex+1,imageindex+1,imageindex+1];
      }

      if(count2 == 0)
      {
        count2 =20;
        score2 =0;
        response2 = "Your Game Again Started";
      }
      
    });
}
void firstim(){
  if(im == 0)
  {
    count2--;
    score2++;
    response2 = "Good Added one point";
  }else{
    count2--;
    response2 = "Oh You Missed";
  }
  zerothim();
  
}
void secondim(){
  if(im == 1)
  {
    count2--;
    score2++;
    response2 = "Good Added one point";
  }else{
    count2--;
    response2 = "Oh You Missed";
  }
  zerothim();

}
void thirdim(){
  if(im == 2)
  {
    count2--;
    score2++;
    response2 = "Good Added one point";
  }else{
    count2--;
    response2 = "Oh You Missed";
  }
  zerothim();
 
}
void fourthim(){
  if(im == 3)
  {
    count2--;
    score2++;
    response2 = "Good Added one point";
  }else{
    count2--;
    response2 = "Oh You Missed";
  }
  zerothim();
  
}
void closesec(){
  setState(() {
      reset();
      g = 2;
    });
}
void restart(){
  setState(() {
      score2 = 0;
      count2 =20;
      response2 = "Your Game Again Started";
      zerothim();
    });
}


//secondgame ended
//secondgame ended
thirdgame(){}
//math test game is going to start
//math test game is going to start
//math test game is going to start

void add(){
  setState(() {
    reset();
      ma = 1;
    });
}
void mult(){}
void devide(){}
void backm(){}


//math test game is going to end


@override
void initState() { 
  super.initState();
  s = false;
  
}
@override
  void dispose() {
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: IconButton(icon: Icon(Icons.menu),
      tooltip: 'Navigation Menu', onPressed: menu,),
      title: Text("MappY"),
      ),
      body: Center(
        child: Wrap(children: [
          
          //if(s == false /* && x == 0 */) Text("Your map is this"),
          if(s == true) menuWidget(mathtest,nextJour,markredPlace,game),
          if(x ==1) gamelist(firstgame,secondgame,thirdgame,back0),
          if(g ==1) firstgame1(playgame,highScore,knowMore,back),
          if(p ==1) firstgameplaying(opt1,opt2,opt3,opt4 , countryName,cap,score,response,closeGame,restartGame,countl ),
          if(g == 2) secomdgame1(playgame2,highScore2,knowMore2,back2),
          if(p==2) secondgameplaying( zerothim, firstim, secondim, thirdim, fourthim, closesec, restart,imageindex,imindex,score2,count2,response2),
          if(m==1) mathwidget( add, mult, devide, backm),
          if(ma == 1)addplaying(),
        ],),
      ),
    );
    
  }}

Widget menuWidget(void mathtest(),void nextJour(),void markredPlace(),void game())
{
  return Column(
    children: [
      ElevatedButton(onPressed: mathtest,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("Math Test")),
      ElevatedButton(onPressed: nextJour,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("    Your Next Journey   ")),
      ElevatedButton(onPressed: markredPlace,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("     Marked  Places      ")),
      ElevatedButton(onPressed: game,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("Capital And Figure")),
      TextButton( child: Text("MappY Privacy Policy",style: TextStyle(fontSize: 10),),onPressed: null,),
      Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        TextButton(child: Text("@facebook",style: TextStyle(fontSize: 10),),onPressed: null,),
        TextButton(child: Text("@Twitter",style: TextStyle(fontSize: 10),),onPressed: null,),
        TextButton(child: Text("@Linkedin",style: TextStyle(fontSize: 10),),onPressed: null,),
        ],),
        Text("All our privacy and policy is ",style: TextStyle(fontSize: 12),),
        Text("In your controll so let's begin. ",style: TextStyle(fontSize: 12),),
        

    ],
  );
}

Widget gamelist(void firstgame(),void secondgame(),void thirdgame(),void back0())
{
  return Column(children: [
    // math gaming 
     ElevatedButton(onPressed: firstgame,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("    Guess Capital       ")),
     ElevatedButton(onPressed: secondgame,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("   Select Correct    ")),
     ElevatedButton(onPressed: thirdgame,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("     Select Next     ")),
     ElevatedButton(onPressed: back0,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,40))), child: Text("Back")),
  ],);
}

Widget firstgame1(void playgame(),void highScore(),void knowMore(),void back())
{
  return Column(children: [
    // math gaming 
     ElevatedButton(onPressed: playgame,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("     Play    Game       ")),
     ElevatedButton(onPressed: highScore,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("   Higher   Score    ")),
     ElevatedButton(onPressed: knowMore,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("     Know     More     ")),
     ElevatedButton(onPressed: back,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,40))), child: Text("Back")),
  ],);
}

Widget firstgameplaying(void opt1(),void opt2(),void opt3(),void opt4(), String countryName, List<String>cap,int score,String response,void closeGame(),void restartGame(),int count1 )
{
  
  return Container(color: Colors.black45,//amber,
    child: Column(
    /* crossAxisAlignment :CrossAxisAlignment.end */children: [

      Text("Your Left Attempt ::$count1 ",style: TextStyle(color: Colors.white,fontSize: 18),),
      Padding(padding: EdgeInsets.all(10),child: Container(height: 70.0,width: 240.0,color: Colors.black38,
        child: Column(children: [
          Text("Higher Score  : :  0 ",style: TextStyle(color: Colors.white,fontSize: 20.0),),
          SizedBox(height: 10,),
          Text("Current Score : :  $score ",style: TextStyle(color: Colors.white,fontSize: 20.0),),
        ],),
      )),
      Container( color : Color.fromRGBO(227, 127, 17, 0.9),child: Expanded(
        child: Column(children: [
          Text("Choose correct capital of given country",style: TextStyle(fontSize: 15),),
        Row(mainAxisAlignment : MainAxisAlignment.center,children: [
          Text("Country Name",style: TextStyle(fontSize: 20,color: Colors.white)),
          Icon(Icons.arrow_right),
          Text(" $countryName ",style: TextStyle(fontSize: 19,color: Colors.white)),
        ],),],),
      ),),
      
      Text("$response ...",style: TextStyle(color: Colors.red,fontSize: 15),),
      ElevatedButton(onPressed: opt1 ,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40)),backgroundColor: MaterialStateProperty.all(Colors.green)), child: Text(" ${cap[0]} ")),
       ElevatedButton(onPressed: opt2,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40)),backgroundColor: MaterialStateProperty.all(Colors.green)), child: Text(" ${cap[1]}")),
       ElevatedButton(onPressed: opt3,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40)),backgroundColor: MaterialStateProperty.all(Colors.green)), child: Text(" ${cap[2]} ")),
       ElevatedButton(onPressed: opt4,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40)),backgroundColor: MaterialStateProperty.all(Colors.green)), child: Text("${cap[3]}")),

       Padding(padding: EdgeInsets.all(30),child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
        ElevatedButton(onPressed: closeGame,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,40))), child: Text("Close")),
       ElevatedButton(onPressed: restartGame,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,40))), child: Text(" Restart ")),
      ],)),
    ],),
  );
}




Widget secomdgame1(void playgame2(),void highScore2(),void knowMore2(),void back2())
{
  return Column(children: [
    // math gaming 
     ElevatedButton(onPressed: playgame2,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("     Play    Game       ")),
     ElevatedButton(onPressed: highScore2,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("   Higher   Score    ")),
     ElevatedButton(onPressed: knowMore2,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("     Know     More     ")),
     ElevatedButton(onPressed: back2,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,40))), child: Text("Back")),
  ],);
}


Widget secondgameplaying(void zerothim(),void firstim(),void secondim(),void thirdim(),void fourthim(),void closesec(),void restart(),int imageindex,List imindex,int score2,int count2,String response2)
{
  
  return Container(color: Colors.black45,//amber,
    child: Column(
    /* crossAxisAlignment :CrossAxisAlignment.end */children: [

      Text("Your Left Attempt :: $count2 ",style: TextStyle(color: Colors.white,fontSize: 18),),
      Padding(padding: EdgeInsets.all(10),child: Container(height: 70.0,width: 240.0,color: Colors.black38,
        child: Column(children: [
          Text("Higher Score  : :  $score2 ",style: TextStyle(color: Colors.white,fontSize: 20.0),),
          SizedBox(height: 10,),
          Text("Current Score : :   $score2 ",style: TextStyle(color: Colors.white,fontSize: 20.0),),
        ],),
      )),
      Container( color : Colors.white12,child: Expanded(
        child: Column(children: [
          Text("Choose Same Figure of given Figure",style: TextStyle(fontSize: 15),),
        GestureDetector(onTap: zerothim,child: Image(image: AssetImage('images/$imageindex.png'),width: 86.0,height: 100.0,),),
        ],),
      ),),
      Text(" $response2",style: TextStyle(color: Colors.red,fontSize: 15),),
       Row(children: [ 
        Padding(
          padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
        child:GestureDetector(onTap:firstim,child: Image(image: AssetImage('images/${imindex[0]}.png'),width: 86.0,height: 100.0,),),
        ),
        GestureDetector(onTap:secondim,child: Image(image: AssetImage('images/${imindex[1]}.png'),width: 86.0,height: 100.0,),),
       // Container(height: 100,width: 86,color: Colors.green,),
        Padding(
          padding: const EdgeInsets.fromLTRB(3, 0, 3, 0),
        child:GestureDetector(onTap:thirdim,child: Image(image: AssetImage('images/${imindex[2]}.png'),width: 86.0,height: 100.0,),),
        ),
        GestureDetector(onTap:fourthim,child: Image(image: AssetImage('images/${imindex[3]}.png'),width: 86.0,height: 100.0,),),
        ],),
      
       Padding(padding: EdgeInsets.all(30),child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
        ElevatedButton(onPressed: closesec,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,40))), child: Text("Close")),
       ElevatedButton(onPressed: restart,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,40))), child: Text(" Restart ")),
      ],)),
    ],),
  );
}


//mathtest game start here 
//mathtest game start here 
//mathtest game start here 





Widget mathwidget(void add(),void mult(),void devide(),void backm())
{
  return Column(children: [
    // math gaming 
     ElevatedButton(onPressed: add,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("  Addition Test  ")),
     ElevatedButton(onPressed: mult,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("  Substraction Test  ")),
     ElevatedButton(onPressed: devide,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40))), child: Text("  Multiplication Test   ")),
     ElevatedButton(onPressed: backm,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,40))), child: Text("Back")),
  ],);
}

Widget addplaying()//void opt1(),void opt2(),void opt3(),void opt4(), String countryName, List<String>cap,int score,String response,void closeGame(),void restartGame(),int count1 )
{
  
  return Container(color: Colors.black45,//amber,
    child: Column(
    /* crossAxisAlignment :CrossAxisAlignment.end */children: [

      Text("Your Left Attempt :: count1 ",style: TextStyle(color: Colors.white,fontSize: 18),),
      Padding(padding: EdgeInsets.all(10),child: Container(height: 70.0,width: 240.0,color: Colors.black38,
        child: Column(children: [
          Text("Higher Score  : :  0 ",style: TextStyle(color: Colors.white,fontSize: 20.0),),
          SizedBox(height: 10,),
          Text("Current Score : :   score ",style: TextStyle(color: Colors.white,fontSize: 20.0),),
        ],),
      )),
      Container( color : Color.fromRGBO(227, 127, 17, 0.9),child: Expanded(
        child: Column(children: [
          Text("Choose correct number of given Expresion",style: TextStyle(fontSize: 15),),
        Row(mainAxisAlignment : MainAxisAlignment.center,children: [
          Text(" 20 X ",style: TextStyle(fontSize: 20,color: Colors.white)),
          //Icon(Icons. ),
          Text("  30 ",style: TextStyle(fontSize: 19,color: Colors.white)),
        ],),],),
      ),),
      
      Text(" response ...",style: TextStyle(color: Colors.red,fontSize: 15),),
      ElevatedButton(onPressed: null ,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40)),backgroundColor: MaterialStateProperty.all(Colors.green)), child: Text("  ${20*21}")),
       ElevatedButton(onPressed: null,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40)),backgroundColor: MaterialStateProperty.all(Colors.green)), child: Text("  ${34*32}")),
       ElevatedButton(onPressed: null,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40)),backgroundColor: MaterialStateProperty.all(Colors.green)), child: Text("  ${12*21} ")),
       ElevatedButton(onPressed: null,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(200,40)),backgroundColor: MaterialStateProperty.all(Colors.green)), child: Text(" ${22*32}")),

       Padding(padding: EdgeInsets.all(30),child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,children: [
        ElevatedButton(onPressed: null,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,40))), child: Text("Close")),
       ElevatedButton(onPressed: null,style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,40))), child: Text(" Restart ")),
      ],)),
    ],),
  );
}



//fromRGBO(227, 127, 17, 0.9),
