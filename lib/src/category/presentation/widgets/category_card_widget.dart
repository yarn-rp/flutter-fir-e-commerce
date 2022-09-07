import 'package:flutter/material.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';

class CategoryCardWidget extends StatelessWidget {
  const CategoryCardWidget({
    super.key,
    required this.category,
  });
  final Category category;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Card(
        clipBehavior: Clip.hardEdge,
        elevation: 4,
        borderOnForeground: true,
        color: Theme.of(context).cardColor,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Image.network(
              category.imageUrl,
              fit: BoxFit.cover,
            ),
            ColoredBox(
              color: category.color.withOpacity(0.4),
            ),
            Center(
              child: Text(
                category.name,
                style: Theme.of(context).textTheme.headline1?.copyWith(
                  color: Colors.white,
                  shadows: [
                    const Shadow(
                      offset: Offset.infinite,
                      blurRadius: 4,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
