import 'package:flutter/material.dart';
import 'package:flutter_notification_listener/flutter_notification_listener.dart';

class NotificationEventItem extends StatelessWidget {
  final NotificationEvent item;

  const NotificationEventItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: ListTile(
        isThreeLine: true,
        subtitle: Text(item.text ?? ''),
        title: Text(item.packageName ?? ''),
        leading: item.largeIcon != null ? Image.memory(item.largeIcon!) : null,
      ),
    );
  }
}
