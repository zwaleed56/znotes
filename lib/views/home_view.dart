import 'package:flutter/material.dart';
import 'package:znotes/widgets/custom_iconbutton.dart';
import 'package:znotes/widgets/custom_alertdialog.dart';
import 'package:znotes/widgets/home_view_body.dart';
import 'package:znotes/widgets/add_note_bottom_sheet_body.dart';

bool isSearch = false;

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0,
            surfaceTintColor: Colors.black,
            backgroundColor: Colors.black,
            actions: [
              const SizedBox(width: 16),
              CustomIconButton(
                ontap: () {
                  showDialog(
                      useSafeArea: false,
                      barrierDismissible: false,
                      barrierColor: Colors.grey.withOpacity(.4),
                      context: context,
                      builder: (context) {
                        return const CustomAlertDialog();
                      });
                },
              ),
              const SizedBox(width: 10)
            ],
            title: const Text('Notes', style: TextStyle(fontSize: 25))),
        floatingActionButton: FloatingActionButton(
          enableFeedback: false,
          backgroundColor: Colors.black,
          shape: const CircleBorder(),
          child: const Icon(Icons.add, size: 50),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(32),
                        topRight: Radius.circular(32))),
                context: context,
                builder: (context) {
                  return SingleChildScrollView(
                      padding: EdgeInsets.only(
                          bottom: MediaQuery.of(context)
                              .viewInsets
                              .bottom // Adjusts for the keyboard
                          ),
                      child: const ShowModalBottomSheetBody());
                });
          },
        ),
        body: const HomeViewBody());
  }
}
