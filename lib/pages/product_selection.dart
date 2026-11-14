import 'package:material_ui/material_ui.dart';
import 'package:shopping_list_app/structure/categories.dart';
import 'package:shopping_list_app/widgets/custom_app_bar.dart';
import 'package:shopping_list_app/lexikon.dart';
import 'package:shopping_list_app/widgets/amount_picker.dart';


class ProductSelectionPage extends StatelessWidget {
  const ProductSelectionPage({super.key, required this.category});

  final Categories category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          const SizedBox(height: 20),          
          Center(
            child: Text(
                      category.label,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(40),
              crossAxisSpacing: 40,
              mainAxisSpacing: 40,
              crossAxisCount: 4,
              children: (lexikonMap[category] ?? [])
              .map((productName) => _productButton(context, productName))
              .toList(),
            ),
          ),
        ],
      )
    );
  }

  Widget _productButton(BuildContext context, String productName) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        _displayBottomSheet(context);
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: Colors.pink[100],
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(child: Image.asset(category.imagePath)),
            const SizedBox(height: 8),
            Text(productName),
          ],
        ),
      ),
    );
  }

  Future _displayBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        height: 900,
        child: GridView.count(
          padding: const EdgeInsets.all(60),
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          crossAxisCount: 1,
          childAspectRatio: 2.5,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.purple[50],
              child: const AmountPicker()
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.purple[50],
              child: const Text('Kilogramm')
            ),
          ]
        )
      )
    );
  }
}