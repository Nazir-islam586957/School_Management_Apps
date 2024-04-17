class ResultData {
  final String subjectName;
  final int totalMarks;
  final int obtainedMarks;
  final String grade;
  ResultData(
    this.subjectName,
    this.totalMarks,
    this.obtainedMarks,
    this.grade,
  );
}

List<ResultData> result = [
  ResultData('Computer Science', 100, 75, 'A'),
  ResultData('System analysis design', 100, 69, 'A-'),
  ResultData('Apps development ', 100, 95, 'A+'),
  ResultData('Digital marketing ', 100, 79, 'A'),
  ResultData('Scripting with pythone', 100, 78, 'A'),
  ResultData('management security', 100, 82, 'A+'),
];
