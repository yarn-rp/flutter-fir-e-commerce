import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/adaptive_app_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_buttons/adaptive_button.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dedicated_refresh_scaffold/adaptive_refresh_scaffold.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dialogs/adaptive_snackar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dialogs/processing.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/entities/category.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/widgets/catgories_chip_selector.dart';
import 'package:flutter_fir_e_commerce/src/images/presenter/get_image.dart';
import 'package:flutter_fir_e_commerce/src/product/presentation/state_management/create_product_cubit/create_product_cubit.dart';
import 'package:image_picker/image_picker.dart';

class CreateProductPage extends StatelessWidget {
  const CreateProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreateProductView();
  }
}

class CreateProductView extends StatefulWidget {
  const CreateProductView({super.key});

  @override
  State<CreateProductView> createState() => _CreateProductViewState();
}

class _CreateProductViewState extends State<CreateProductView> {
  late String name;
  File? imgFile;
  Category? category;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    name = '';
    super.initState();
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  bool isValid() => imgFile != null && name.isNotEmpty && category != null;

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(
        centerTitle: Platform.isIOS,
        title: const Text('Create product'),
        trailing: Padding(
          padding: const EdgeInsets.only(right: 4.0),
          child: AdaptiveButton(
            child: const Text('Submit'),
            onPressed: () {
              if (!isValid()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  getAdaptiveSnackbar(
                    backgroundColor:
                        Theme.of(context).errorColor.withOpacity(0.8),
                    context: context,
                    content: const Text('Please make sure to fill all fields'),
                  ),
                );
              } else {
                showGeneralDialog(
                  context: context,
                  pageBuilder: (context, animation1, animation2) {
                    return BlocProvider(
                      create: (context) => sl<CreateProductCubit>(),
                      child: ProcessingWidget<void>(
                        action: (context) {
                          return context
                              .read<CreateProductCubit>()
                              .createProduct(
                                name: name,
                                imageFile: imgFile!,
                                category: category!,
                              );
                        },
                        onResult: (innerContext, _) async {
                          final state =
                              innerContext.read<CreateProductCubit>().state;
                          state
                              .maybeWhen<VoidCallback>(
                                orElse: () => () {},
                                success: () => () {
                                  Navigator.popUntil(
                                    innerContext,
                                    (r) => r.isFirst,
                                  );
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    getAdaptiveSnackbar(
                                      backgroundColor: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.8),
                                      context: context,
                                      content: const Text('Product created'),
                                    ),
                                  );
                                },
                                error: (error) => () {
                                  Navigator.pop(innerContext);
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    getAdaptiveSnackbar(
                                      backgroundColor: Theme.of(context)
                                          .errorColor
                                          .withOpacity(0.8),
                                      context: context,
                                      content: Text(
                                          'Error creating category $error'),
                                    ),
                                  );
                                },
                              )
                              .call();
                        },
                      ),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
      body: Form(
        key: _formKey,
        child: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              AspectRatio(
                aspectRatio: 16.0 / 9,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    if (imgFile != null) ...[
                      Image.file(
                        imgFile!,
                        fit: BoxFit.cover,
                      ),
                    ] else
                      ColoredBox(
                        color: Theme.of(context).hintColor,
                      ),
                    Center(
                      child: Text(
                        name,
                        style: Theme.of(context).textTheme.headline1?.copyWith(
                          shadows: [
                            const Shadow(
                              offset: Offset.infinite,
                              blurRadius: 4,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: -25,
                      right: 16,
                      child: FloatingActionButton.extended(
                        backgroundColor: Theme.of(context).cardColor,
                        label: Text(
                          'Pick image',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        onPressed: () async {
                          final image = await getGeneralImage(
                              context, ImageSource.gallery);
                          if (image != null) {
                            setState(() {
                              imgFile = image;
                            });
                          }
                        },
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Product Name'),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Select category',
                      style: Theme.of(context).textTheme.headline2?.copyWith(
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CategoryChipSelector(
                      onCategoryChanged: (c) {
                        setState(() {
                          category = c;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
