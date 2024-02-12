import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:jiffy/jiffy.dart';

import '../My_Them.dart';

class AddTask extends StatefulWidget {
  @override
  State<AddTask> createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  var selectedDate = Jiffy.now().yMMMd;
  var formkey = GlobalKey<FormState>();
  String title = '';
  String description = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25), topRight: Radius.circular(25)),
        boxShadow: [
          BoxShadow(
            color: MyThem.primarycolor,
            blurRadius: 25,
            blurStyle: BlurStyle.outer,
            offset: Offset(1, 1),
          )
        ],
      ),
      padding: EdgeInsets.all(MediaQuery.of(context).size.longestSide * 0.01),
      height: MediaQuery.of(context).size.height * 1.0,
      child: Column(
        children: [
          Text(
            AppLocalizations.of(context)!.add_new_task,
            style:
                Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          Form(
              key: formkey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (text) {
                        title = text;
                      },
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return '${AppLocalizations.of(context)!.please}'
                              ' '
                              '${AppLocalizations.of(context)!.enter_your_task_title}';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: Text(
                          AppLocalizations.of(context)!.enter_your_task_title,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      onChanged: (text) {
                        description = text;
                      },
                      validator: (text) {
                        if (text == null || text.isEmpty) {
                          return '${AppLocalizations.of(context)!.please}'
                              ' '
                              '${AppLocalizations.of(context)!.enter_your_task_details}';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        label: Text(
                          AppLocalizations.of(context)!.enter_your_task_details,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ),
                      maxLines: 4,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      AppLocalizations.of(context)!.select_time,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: 20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        ShowCalender();
                      },
                      child: Text(
                        selectedDate,
                        style: Theme.of(context).textTheme.titleSmall,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  FloatingActionButton(
                    onPressed: () {
                      addtask();
                    },
                    child: Text(AppLocalizations.of(context)!.add,
                        style: Theme.of(context).textTheme.titleMedium),
                  ),
                ],
              )),
        ],
      ),
    );
  }

  void ShowCalender() async {
    var chosenDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365)));
    if (chosenDate != null) {
      selectedDate = chosenDate as String;
    }
    setState(() {});
  }

  void addtask() {
    if (formkey.currentState?.validate() == true) {}
  }
}
