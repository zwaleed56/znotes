import 'package:flutter/material.dart';
import 'package:znotes/widgets/custom_iconbutton.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: const Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
                isThreeLine: true,
                contentPadding: EdgeInsets.only(top: 24, left: 24),
                title: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: Text(
                    'Flutter tips',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 38,
                    ),
                  ),
                ),
                subtitle: Text(
                  'Build your Career with Tharwat Samy',
                  style: TextStyle(color: Colors.black54, fontSize: 25),
                ),
                trailing: Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: CustomIconButton(
                    icon: Icon(Icons.delete),
                    iconColor: Colors.black,
                    iconSize: 50,
                    opicity: 0,
                  ),
                )),
            Padding(
              padding: EdgeInsets.only(right: 24, bottom: 24),
              child: Text(
                'May 21,2022',
                style: TextStyle(color: Colors.black54, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
