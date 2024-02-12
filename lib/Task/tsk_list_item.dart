import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/My_Them.dart';
import 'package:todo_app/Settings/app_provider.dart';

class TaskListItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var taskdate = Jiffy.now().yMMMd;
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.cyan),
          borderRadius: BorderRadius.circular(20),
          color:
              provider.isDarkMode() ? MyThem.deepgraycolordark : Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.all(15),
            color: Colors.blueAccent,
            height: MediaQuery.of(context).size.height * 0.10,
            width: 4,
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Task Title',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  'Task Describe',
                  style: provider.isDarkMode()
                      ? Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white, fontSize: 18)
                      : Theme.of(context).textTheme.bodyMedium!.copyWith(
                          color: MyThem.backgrounddarkcolor, fontSize: 18),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Text(
                  '$taskdate',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 15,
                      ),
                ),
              ),
            ],
          )),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
                color: MyThem.primarycolor,
                borderRadius: BorderRadius.circular(10)),
            child: Icon(
              Icons.check,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
    );
  }
}
