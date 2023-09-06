//
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a blue toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: MaterialApp(home: const MyHomePage(title: 'Flutter Demo Home Page')),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//
//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.
//
//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".
//
//   final String title;
//
//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//
//         title: Text(widget.title),
//       ),
//       body: ChangeNotifierProvider<CounterProvider>(
//         create: (context) => CounterProvider(),
//         child: Consumer<CounterProvider>(
//             builder: (context,provider,child){
//               return Container();
//             }
//         ),),
//         child: Center(
//
//           child: Column(
//             // Column is also a layout widget. It takes a list of children and
//             // arranges them vertically. By default, it sizes itself to fit its
//             // children horizontally, and tries to be as tall as its parent.
//             //
//             // Column has various properties to control how it sizes itself and
//             // how it positions its children. Here we use mainAxisAlignment to
//             // center the children vertically; the main axis here is the vertical
//             // axis because Columns are vertical (the cross axis would be
//             // horizontal).
//             //
//             // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//             // action in the IDE, or press "p" in the console), to see the
//             // wireframe for each widget.
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               const Text(
//                 'You have pushed the button this many times:',
//               ),
//               Text(
//                 '${provider.count.toString()}',
//                 style: Theme.of(context).textTheme.headlineMedium,
//               ),
//             ],
//           ),
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: provider.increase,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
/*import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'CounterProvider.dart';

void main() {
  final counterProvider = CounterProvider();
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => counterProvider)],
      builder: (context, _) {
        return MyApp();
      },
    ),
  );
  // MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

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
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: ChangeNotifierProvider<CounterProvider>(
        create: (context) => CounterProvider(),
        child: Consumer<CounterProvider>(
          builder: (context,provider,child){
            return Center(
              // Center is a layout widget. It takes a single child and positions it
              // in the middle of the parent.
              child: Column(
                // Column is also a layout widget. It takes a list of children and
                // arranges them vertically. By default, it sizes itself to fit its
                // children horizontally, and tries to be as tall as its parent.
                //
                // Column has various properties to control how it sizes itself and
                // how it positions its children. Here we use mainAxisAlignment to
                // center the children vertically; the main axis here is the vertical
                // axis because Columns are vertical (the cross axis would be
                // horizontal).
                //
                // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
                // action in the IDE, or press "p" in the console), to see the
                // wireframe for each widget.
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'You have pushed the button this many times:',
                  ),
                  Text(
                    '${provider.count.toString()}',
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                  ElevatedButton(onPressed: (){
                    provider.incraese();
                  }, child: Text("Run"))
                ],
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}*/


import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Weather(),
      debugShowCheckedModeBanner:(false),
    );
  }
}

class Weather extends StatefulWidget {
  const Weather({super.key});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController country = TextEditingController();
  String? _city;
  String? _state;
  String? _country;
  String image = "assets/circle.gif";
  double? lat;
  double? lon;
  double? tempk;
  double? tempc;
  int? press;
  int? humid;
  String? weather;

  void getLocation()async {
    _city=city!.text;
    _state=state!.text;
    _country=country!.text;

    final loc = await http.get(Uri.parse('http://api.openweathermap.org/geo/1.0/direct?q=$_city,$_state,$_country&limit=5&appid=1a252ab7ddd5647b02ca97a46b3b2706'));
    var locdata = jsonDecode(loc.body.toString());
    //print(locdata);
    lat=locdata[0]['lat'];
    lon=locdata[0]['lon'];
    print("Latitude=$lat");
    print("Longitude=$lon");

    final weat= await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=1a252ab7ddd5647b02ca97a46b3b2706'));
    var weatdata = jsonDecode(weat.body.toString());
    print(weatdata);
    tempk=weatdata["main"]['temp'];
    tempc=tempk! - 273 ;
    humid=weatdata["main"]['humidity'];
    press=weatdata["main"]['pressure'];


    weather= weatdata["weather"][0]["main"];

    print("Temperature=$tempc");
    // print("Humidity=$humid");
    // print("Pressure=$press");
    print("Weather=$weather");



    //if(weather == 'Haze')
    setState(() {
      if(weather == 'Haze'){
        image = 'assets/clouds.gif';
      }
      else if(weather == 'Clouds'){
        image = 'assets/haze.gif';
      }
      else
        image = 'assets/sunny.gif';

    });




  }
  @override
  Widget build(BuildContext context) {
      return  Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover
            )
        ),
        child: Scaffold(
          /*bottomNavigationBar: BottomNavigationBar(backgroundColor: Colors.lightGreenAccent,
              items: [
                BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",backgroundColor: Colors.lightGreenAccent ),
                BottomNavigationBarItem(icon: Icon(Icons.upload),label: "Home",backgroundColor: Colors.lightGreenAccent ),
                BottomNavigationBarItem(icon: Icon(Icons.download),label: "Home",backgroundColor: Colors.lightGreenAccent ),
                BottomNavigationBarItem(icon: Icon(Icons.settings),label: "Home",backgroundColor: Colors.lightGreenAccent ),


              ]),*/
          /*bottomNavigationBar:BottomAppBar(
            color: Colors.deepPurpleAccent,
            shape:CircularNotchedRectangle(),
            child: Container(margin: EdgeInsets.only(left: 12.0,right: 12.0
            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: (){}, icon: Icon(Icons.home),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.upload),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.download),),
                  IconButton(onPressed: (){}, icon: Icon(Icons.settings),),
                ],
              ),
            ),

          ) ,*/
          /*floatingActionButton: FloatingActionButton(
            elevation: 20.0,
            onPressed: (){},child: Icon(Icons.add),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,*/

          backgroundColor: Colors.transparent,
                body:Center(
                  child: Column(
                    children: [
                      SizedBox(height: 75),
                      TextField(controller: city,
                          style:TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText:"City",
                            labelStyle: TextStyle(color: Colors.yellow),

                          )
                      ),
                      SizedBox(height: 20,),
                      TextField(controller: state,
                        style:TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText:"State",
                            labelStyle: TextStyle(color: Colors.yellow),


                          )
                      ),
                      SizedBox(height: 20,),
                      TextField(controller: country,
                          style:TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            labelText:"Country",
                            labelStyle: TextStyle(color: Colors.yellow),

                          )
                      ),
                      SizedBox(height: 20,),
                      ElevatedButton(onPressed:(){
                        getLocation();
                        }, child: Text("Press Button",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),style:ElevatedButton.styleFrom(
                          backgroundColor: Colors.red[400],fixedSize: Size(200, 50),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40),
                      )
                      )
                      ),
                      SizedBox(height: 20),
                    // Text("Latitude=$lat",style: TextStyle(color: Colors.white)),
                    // Text("Longitude=$lon",style: TextStyle(color: Colors.white)),
                    // Text("Temperature=$tempc",style: TextStyle(color: Colors.white)),
                    // Text("Humidity=$humid",style: TextStyle(color: Colors.white)),
                    // Text("Pressure=$press",style: TextStyle(color: Colors.white)),
                      Text("Temperature=$tempc",style: TextStyle(color: Colors.white)),
                      Text("It's $weather weather in $_city",style: TextStyle(color: Colors.white)),
                    ],
                  ),
                )

        ),

      //debugShowCheckedModeBanner:(false),
    );
  }
}


