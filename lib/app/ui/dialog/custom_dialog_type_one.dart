import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:to_do/app/theme/custom_color.dart';
import 'package:to_do/app/theme/custom_text_theme.dart';

class CustomDialogTypeOne<T> extends StatelessWidget {
  final String title;
  final Map<String, T> items;
  final T selectedItem;
  final void Function(T) onSelect;

  const CustomDialogTypeOne({
    Key? key,
    required this.title,
    required this.items,
    required this.selectedItem,
    required this.onSelect,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: SizedBox(
        height: items.length * 55,
        child: NotificationListener<OverscrollIndicatorNotification>(
          onNotification: (overScroll) {
            overScroll.disallowIndicator();
            return false;
          },
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 10),
                  child: Text(
                    title,
                    style: Theme.of(context)
                        .extension<CustomTextTheme>()!
                        .heading3,
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  childCount: items.length,
                  (context, index) {
                    return InkWell(
                      onTap: () {
                        onSelect(items.values.elementAt(index));
                        context.router.pop();
                      },
                      child: Ink(
                        color: selectedItem == items.values.elementAt(index)
                            ? Theme.of(context)
                                .extension<CustomColor>()!
                                .dialogSelectedItem1
                            : null,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          child: Text(
                            items.keys.elementAt(index),
                            style: Theme.of(context)
                                .extension<CustomTextTheme>()!
                                .labelStyle1,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
