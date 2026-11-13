import 'package:material_ui/material_ui.dart';
import 'package:flutter_svg/flutter_svg.dart';


AppBar buildAppBar(BuildContext context) {
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
    leading: Navigator.of(context).canPop()
    ? GestureDetector(
        onTap: () => Navigator.of(context).pop(),
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
      )
    : null,
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