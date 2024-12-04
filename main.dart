import 'package:flutter/material.dart';
void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
	return MaterialApp(
	title: 'QR Scanner and Generator',
	debugShowCheckedModeBanner: false,
	theme: ThemeData(
	primarySwatch: Colors.indigo,
	),
	home: HomePage(),
	);
}
}

class HomePage extends StatefulWidget {
@override
_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

@override
Widget build(BuildContext context) {
	return Scaffold(
	
	body: Container(
		width: 500,
		height: 500,
		child: Column(
		mainAxisAlignment: MainAxisAlignment.center,
		crossAxisAlignment: CrossAxisAlignment.stretch,
		children: [
			Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQyYwscUPOH_qPPe8Hp0HAbFNMx-TxRFubpg&usqp=CAU")),
			
		
			FlatButton(
			padding: EdgeInsets.all(15),
			onPressed: (){
				Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ScanQR()));
			},
				child: Text("Scan QR Code",style: TextStyle(color: Colors.indigo[900]),),
			shape: RoundedRectangleBorder(
				borderRadius: BorderRadius.circular(20),
				side: BorderSide(color: Colors.indigo[900]),
			),
			),
			SizedBox(height: 10),

			FlatButton(
			padding: EdgeInsets.all(15),
			onPressed: (){
				Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
															GenerateQR()));
			},
			child: Text("Generate QR Code", style: TextStyle(color: Colors.indigo[900]),),
			shape: RoundedRectangleBorder(
				borderRadius: BorderRadius.circular(20),
				side: BorderSide(color: Colors.indigo[900]),
			),
			),
		],
		),
	)
	);
}
}
