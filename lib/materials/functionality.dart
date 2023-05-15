import 'dart:ffi';

timeData toTime(int mlsec) {
  int sec = (mlsec / 1000).toInt();
  int min = (sec / 60).toInt();
  sec %= 60;
  int hr = (min / 60).toInt();
  min %= 60;
  return timeData(hr, min, sec);
}

class timeData {
  int hr = 0, min = 0, sec = 0;
  timeData(int hr, int min, int sec) {
    this.hr = hr;
    this.min = min;
    this.sec = sec;
  }
}

class sessionData {
  String taskName = "";
  timeData sessionTime = timeData(0, 0, 0);
  DateTime sessionDate = DateTime.now();
  sessionData(String taskName, timeData sessionTime, DateTime sessionDate) {
    this.taskName = taskName;
    this.sessionTime = sessionTime;
    this.sessionDate = sessionDate;
  }
}
