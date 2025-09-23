import 'package:flutter/material.dart';
import 'package:yes_no_app/domain/entities/message.dart';

class HerMessageBubble extends StatelessWidget {
  final Message message;
  const HerMessageBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: colors.secondary,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(message.text, style: TextStyle(color: Colors.white)),
          ),
        ),
        SizedBox(height: 10),
        _ImageBubble(message.imageUrl!),
        SizedBox(height: 5),
      ],
    );
  }
}

class _ImageBubble extends StatelessWidget {
  final String imagUrl;

  const _ImageBubble(this.imagUrl);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(10),
      child: Image.network(
        imagUrl,
        width: size.width * 0.6,
        height: 150,
        fit: BoxFit.cover,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;

          return Container(
            height: 150,
            width: size.width * 0.6,
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Text('Enviando mensaje'),
          );
        },
      ),
    );
  }
}
