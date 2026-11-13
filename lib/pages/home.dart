import 'package:material_ui/material_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _searchField(),
          SizedBox(height: 40),
          Column(
            children: [
              Center(
                child: Text(
                  'Neue Shoppingliste erstellen?',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w600
                  )
                ),
              ),
              SizedBox(height: 10,),
              Center(
                child: _textButton('Start')
              )
            ]
          )
        ],
      ),
    );
  }

  ElevatedButton _textButton(String text) {
    return ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 217, 190, 221)),
                foregroundColor: WidgetStateProperty.all(Colors.black),
              ),
              onPressed: () {
              },
              child: Text(text),
            );
  }

  Container _searchField() {
    return Container(
          margin: EdgeInsets.only(top: 40, left: 40, right: 20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color(0xff1D1617).withOpacity(0.11),
                blurRadius: 40,
                spreadRadius: 0.0
              )
            ]
          ),
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.white,
              contentPadding: EdgeInsets.all(15),
              prefixIcon: Padding(
                padding: const EdgeInsets.all(12),
                child: SvgPicture.asset('assets/icons/search-svgrepo-com.svg'),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide.none
              )
            )
          ),
        );
  }

  AppBar appBar() {
    return AppBar(
      title: const Text(
        'Shopping List',
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: 24,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 217, 190, 221),
      elevation: 0,
      centerTitle: true,
      leading: GestureDetector(
        onTap: () {
          // Handle the action when the icon is tapped
        },
        child: Container(
          margin: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 217, 190, 221),
            borderRadius: BorderRadius.circular(10),
          ),
          child: SvgPicture.asset(
            'assets/icons/arrow-narrow-left-svgrepo-com.svg',
            width: 35,
            height: 35,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: () {
            // Handle the action when the icon is tapped
          },
          child: Container(
            margin: EdgeInsets.all(10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 217, 190, 221),
              borderRadius: BorderRadius.circular(10),
            ),
            child: SvgPicture.asset(
              'assets/icons/arrow-right-from-bracket-svgrepo-com.svg',
              width: 25,
              height: 25,
            ),
          )
        )
      ],
    );
  }
}