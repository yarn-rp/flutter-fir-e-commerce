import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_app_bar/adaptive_app_bar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/adaptive_buttons/adaptive_button.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dedicated_refresh_scaffold/adaptive_refresh_scaffold.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dialogs/adaptive_snackar.dart';
import 'package:flutter_fir_e_commerce/core/widgets/dialogs/processing.dart';
import 'package:flutter_fir_e_commerce/injection_container/config_dependencies.dart';
import 'package:flutter_fir_e_commerce/src/category/domain/use_cases/create_category_use_case.dart';
import 'package:flutter_fir_e_commerce/src/category/presentation/state_manegement/creeate_category_cubit/create_category_cubit.dart';
import 'package:flutter_fir_e_commerce/src/images/presenter/get_image.dart';
import 'package:go_router/go_router.dart';
import 'package:image_picker/image_picker.dart';

class CreateCategoryPage extends StatelessWidget {
  const CreateCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CreateCategoryView();
  }
}

class CreateCategoryView extends StatefulWidget {
  const CreateCategoryView({super.key});

  @override
  State<CreateCategoryView> createState() => _CreateCategoryViewState();
}

class _CreateCategoryViewState extends State<CreateCategoryView> {
  late Color color;
  late String name;
  File? imgFile;
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
    color = Theme.of(context).primaryColor;
  }

  bool isValid() => imgFile != null && name.isNotEmpty;

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      appBar: AdaptiveAppBar(
        centerTitle: Platform.isIOS,
        title: const Text('Create category'),
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
                      create: (context) => sl<CreateCategoryCubit>(),
                      child: ProcessingWidget<void>(
                        action: (context) =>
                            context.read<CreateCategoryCubit>().createCategory(
                                  name: name,
                                  imageFile: imgFile!,
                                  color: color,
                                ),
                        onResult: (context, _) async {
                          final state =
                              context.read<CreateCategoryCubit>().state;
                          state
                              .maybeWhen<VoidCallback>(
                                orElse: () => () {},
                                success: () => () {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    getAdaptiveSnackbar(
                                      backgroundColor: Theme.of(context)
                                          .primaryColor
                                          .withOpacity(0.8),
                                      context: context,
                                      content: const Text('Category created'),
                                    ),
                                  );
                                  Navigator.pop(context);
                                },
                                error: (error) => () =>
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      getAdaptiveSnackbar(
                                        backgroundColor: Theme.of(context)
                                            .errorColor
                                            .withOpacity(0.8),
                                        context: context,
                                        content: Text(
                                            'Error creating category $error'),
                                      ),
                                    ),
                              )
                              .call();
                        },
                      ),
                    );
                  },
                );
                sl<CreateCategoryUseCase>()(
                  CreateCategoryParams(
                    name: name,
                    imageFile: imgFile!,
                    color: color,
                  ),
                ).then(
                  (value) {
                    value.match(
                      (l) => ScaffoldMessenger.of(context).showSnackBar(
                        getAdaptiveSnackbar(
                          backgroundColor:
                              Theme.of(context).errorColor.withOpacity(0.8),
                          context: context,
                          content: Text('Error creating category $l'),
                        ),
                      ),
                      (r) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          getAdaptiveSnackbar(
                            backgroundColor:
                                Theme.of(context).primaryColor.withOpacity(0.8),
                            context: context,
                            content: const Text('Category created'),
                          ),
                        );
                        Navigator.pop(context);
                      },
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
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 16.0 / 9,
                child: Stack(
                  clipBehavior: Clip.none,
                  fit: StackFit.expand,
                  children: [
                    if (imgFile != null) ...[
                      Image.file(imgFile!),
                    ],
                    ColoredBox(
                      color: color.withOpacity(0.4),
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
                  decoration: InputDecoration(hintText: 'Category Name'),
                  onChanged: (value) {
                    setState(() {
                      name = value;
                    });
                  },
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: MaterialPicker(
                    pickerColor: color,
                    onColorChanged: (s) {
                      setState(() {
                        color = s;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
