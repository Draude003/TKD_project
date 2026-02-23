import 'package:flutter/material.dart';
import '../../../models/account_model.dart';

class AccountSection extends StatelessWidget {
  const AccountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Column(
          children: List.generate(accountItems.length, (index) {
            final item = accountItems[index];
            final isLast = index == accountItems.length - 1;
            return Column(
              children: [
                Material(
                  color: Colors.white,
                  child: ListTile(
                    splashColor: Colors.grey.shade300,
                    hoverColor: Colors.grey.shade200,
                    leading: Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Image.asset(item.icon, width: 30, height: 30),
                      ),
                    ),
                    title: Text(
                      item.title,
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                    subtitle: Text(
                      item.subtitle,
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 13,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.chevron_right,
                      color: Colors.grey,
                    ),
                    onTap: () {
                      // TODO: navigate to each setting
                    },
                  ),
                ),
                if (!isLast)
                  Divider(height: 1, indent: 60, color: Colors.grey.shade200),
              ],
            );
          }),
        ),
      ),
    );
  }
}
