import 'package:material_ui/material_ui.dart';
import 'package:shopping_list_app/pages/product_selection.dart';
import 'package:shopping_list_app/structure/categories.dart';
import 'package:shopping_list_app/widgets/custom_app_bar.dart';


class CreateShoppingList extends StatelessWidget {
  const CreateShoppingList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Column(
        children: [
          const SizedBox(height: 20),
          const Text(
            'Wähl eine Kategorie aus',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(40),
              crossAxisSpacing: 40,
              mainAxisSpacing: 40,
              crossAxisCount: 3,
              children: Categories.values
                  .map((category) => _categoryButton(context, category))
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _categoryButton(BuildContext context, Categories category) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => ProductSelectionPage(category: category),
          ),
        );
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
            Text(category.label),
          ],
        ),
      ),
    );
  }
}