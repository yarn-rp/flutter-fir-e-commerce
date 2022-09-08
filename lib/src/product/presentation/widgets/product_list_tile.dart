import 'package:flutter/material.dart';
import 'package:flutter_fir_e_commerce/src/product/domain/entities/product.dart';
import 'package:go_router/go_router.dart';

class ProductListTile extends StatelessWidget {
  final Product product;
  const ProductListTile({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => context.go('/products/${product.id}'),
      leading: SizedBox(
        width: 80,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            product.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
      ),
      title: Text(product.name),
      subtitle: Text(
        'from ${product.category.name}',
        style: Theme.of(context).textTheme.subtitle1?.copyWith(
              color: product.category.color,
            ),
      ),
    );
  }
}
