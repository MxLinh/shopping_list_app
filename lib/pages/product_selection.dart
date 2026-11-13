import 'package:material_ui/material_ui.dart';
import 'package:shopping_list_app/structure/categories.dart';

class ProductSelectionPage extends StatelessWidget {
  const ProductSelectionPage({super.key, required this.category});

  final Categories category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(category.label),
      ),
    );
  }
}