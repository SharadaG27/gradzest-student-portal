import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  final Widget? trailing;

  const AppHeader({
    super.key,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [

        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius:
                BorderRadius.circular(
              14,
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black
                    .withOpacity(0.05),
                blurRadius: 10,
              ),
            ],
          ),
          child: IconButton(
            icon: const Icon(
              Icons.menu_rounded,
              color: Color(0xFF111827),
            ),
            onPressed: () {
              Scaffold.of(context)
                  .openDrawer();
            },
          ),
        ),

        if (trailing != null) trailing!,
      ],
    );
  }
}