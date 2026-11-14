import 'package:material_ui/material_ui.dart';

class AmountPicker extends StatefulWidget {
  const AmountPicker({super.key});

  @override
  State<AmountPicker> createState() => _AmountPickerState();
}

class _AmountPickerState extends State<AmountPicker> {
  int _amount = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('Stückanzahl'),
        TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 188, 118, 199)),
            foregroundColor: WidgetStateProperty.all(Colors.black),
          ),
          onPressed: () {
            setState(() {
              _amount++;
            });
          },
          child: Text('up'),
        ),
        Text(
          _amount.toString(),
          textAlign: TextAlign.center,
        ),
        TextButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Color.fromARGB(255, 188, 118, 199)),
            foregroundColor: WidgetStateProperty.all(Colors.black),
          ),
          onPressed: () {
            setState(() {
              if (_amount > 0) {
                _amount--;
              }
            });
          },
          child: Text('down'),
        )
      ],
    );
  }
}