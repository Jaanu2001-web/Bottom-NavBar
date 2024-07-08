import 'package:flutter/material.dart'; 

void main() { 
runApp(const MyApp()); 
} 

class MyApp extends StatelessWidget { 
const MyApp({Key? key}) : super(key: key); 
@override 
Widget build(BuildContext context) { 
	return MaterialApp( 
	title: 'Bottom NavBar', 
	theme: ThemeData( 
		primaryColor: Color.fromARGB(255, 27, 57, 231), 
		splashColor: Colors.transparent, 
		highlightColor: Colors.transparent, 
		hoverColor: Colors.transparent, 
	), 
	debugShowCheckedModeBanner: false, 
	home: const HomePage(), 
	); 
} 
} 

class HomePage extends StatefulWidget { 
const HomePage({Key? key}) : super(key: key); 

@override 
_HomePageState createState() => _HomePageState(); 
} 

class _HomePageState extends State<HomePage> { 
int pageIndex = 0; 

final pages = [ 
	const Page1(), 
	const Page2(), 
	const Page3(), 
	const Page4(), 
]; 

@override 
Widget build(BuildContext context) { 
	return Scaffold( 
	backgroundColor: const Color(0xffC4DFCB), 
	appBar: AppBar( 
		leading: Icon( 
		Icons.menu, 
		color: Theme.of(context).primaryColor, 
		), 
		title: Text( 
		"Bottom NavBar", 
		style: TextStyle( 
			color: Theme.of(context).primaryColor, 
			fontSize: 25, 
			fontWeight: FontWeight.w600, 
		), 
		), 
		centerTitle: true, 
		backgroundColor: Colors.white, 
	), 
	body: pages[pageIndex], 
	bottomNavigationBar: buildMyNavBar(context), 
	); 
} 

Container buildMyNavBar(BuildContext context) { 
	return Container( 
	height: 60, 
	decoration: BoxDecoration( 
		color: Theme.of(context).primaryColorDark, 
		borderRadius: const BorderRadius.only( 
		topLeft: Radius.circular(20), 
		topRight: Radius.circular(20), 
		), 
	), 
	child: Row( 
		mainAxisAlignment: MainAxisAlignment.spaceAround, 
		children: [ 
		IconButton( 
			enableFeedback: false, 
			onPressed: () { 
			setState(() { 
				pageIndex = 0; 
			}); 
			}, 
			icon: pageIndex == 0 
				? const Icon( 
					Icons.chat, 
					color: Colors.white, 
					size: 35, 
				) 
				: const Icon( 
					Icons.chat, 
					color: Colors.white, 
					size: 35, 
				), 
		), 
		IconButton( 
			enableFeedback: false, 
			onPressed: () { 
			setState(() { 
				pageIndex = 1; 
			}); 
			}, 
			icon: pageIndex == 1 
				? const Icon( 
					Icons.update, 
					color: Colors.white, 
					size: 35, 
				) 
				: const Icon( 
					Icons.update, 
					color: Colors.white, 
					size: 35, 
				), 
		), 
		IconButton( 
			enableFeedback: false, 
			onPressed: () { 
			setState(() { 
				pageIndex = 2; 
			}); 
			}, 
			icon: pageIndex == 2 
				? const Icon( 
					Icons.call, 
					color: Colors.white, 
					size: 35, 
				) 
				: const Icon( 
					Icons.call, 
					color: Colors.white, 
					size: 35, 
				), 
		), 
		IconButton( 
			enableFeedback: false, 
			onPressed: () { 
			setState(() { 
				pageIndex = 3; 
			}); 
			}, 
			icon: pageIndex == 3 
				? const Icon( 
					Icons.settings, 
					color: Colors.white, 
					size: 35, 
				) 
				: const Icon( 
					Icons.settings, 
					color: Colors.white, 
					size: 35, 
				), 
		), 
		], 
	), 
	); 
} 
} 

class Page1 extends StatelessWidget { 
const Page1({Key? key}) : super(key: key); 

@override 
Widget build(BuildContext context) { 
	return Container( 
	color: Color.fromARGB(255, 186, 206, 247), 
	child: Center( 
		child: Text( 
		"chats", 
		style: TextStyle( 
			color: Color.fromARGB(255, 82, 46, 227), 
			fontSize: 45, 
			fontWeight: FontWeight.w500, 
		), 
		), 
	), 
	); 
} 
} 

class Page2 extends StatelessWidget { 
const Page2({Key? key}) : super(key: key); 

@override 
Widget build(BuildContext context) { 
	return Container( 
	color: const Color.fromARGB(255, 186, 206, 247), 
	child: Center( 
		child: Text( 
		"Updates", 
		style: TextStyle( 
			color: Color.fromARGB(255, 82, 46, 227), 
			fontSize: 45, 
			fontWeight: FontWeight.w500, 
		), 
		), 
	), 
	); 
} 
} 

class Page3 extends StatelessWidget { 
const Page3({Key? key}) : super(key: key); 

@override 
Widget build(BuildContext context) { 
	return Container( 
	color: const Color.fromARGB(255, 186, 206, 247), 
	child: Center( 
		child: Text( 
		"Calls", 
		style: TextStyle( 
			color: Color.fromARGB(255, 82, 46, 227), 
			fontSize: 45, 
			fontWeight: FontWeight.w500, 
		), 
		), 
	), 
	); 
} 
} 

class Page4 extends StatelessWidget { 
const Page4({Key? key}) : super(key: key); 

@override 
Widget build(BuildContext context) { 
	return Container( 
	color: const Color.fromARGB(255, 186, 206, 247), 
	child: Center( 
		child: Text( 
		"Settings", 
		style: TextStyle( 
			color: Color.fromARGB(255, 82, 46, 227), 
			fontSize: 45, 
			fontWeight: FontWeight.w500, 
		), 
		), 
	), 
	); 
} 
} 
