import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_app/Settings/app_provider.dart';
import 'package:todo_app/Task/tsk_list_item.dart';

class TasksTap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          EasyDateTimeLine(
            locale: provider.AppLanguage,
            initialDate: DateTime.now(),
            onDateChange: (selectedDate) {
              //`selectedDate` the new date selected.
            },
            headerProps: const EasyHeaderProps(
              monthStyle: TextStyle(color: Colors.cyan),
              selectedDateStyle: TextStyle(color: Colors.cyan),
              monthPickerType: MonthPickerType.switcher,
              dateFormatter: DateFormatter.fullDateDMY(),
            ),
            dayProps: const EasyDayProps(
              inactiveDayStyle:
                  DayStyle(dayNumStyle: TextStyle(color: Colors.cyan)),
              todayStyle: DayStyle(dayNumStyle: TextStyle(color: Colors.cyan)),
              borderColor: Colors.cyan,
              todayHighlightColor: Colors.deepPurple,
              dayStructure: DayStructure.dayStrDayNum,
              disabledDayStyle: DayStyle(),
              activeDayStyle: DayStyle(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff3371FF),
                      Color(0xff8426D6),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return TaskListItem();
            }),
          )
        ],
      ),
    );
  }
}
