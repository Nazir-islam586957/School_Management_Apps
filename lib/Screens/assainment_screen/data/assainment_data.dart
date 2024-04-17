class AssignmentData {
  final String subjectName;
  final String topicName;
  final String assignData;
  final String lastData;
  final String status;

  AssignmentData(this.subjectName, this.topicName, this.assignData,
      this.lastData, this.status);
}

List<AssignmentData> assignment = [
  AssignmentData('Computer science project', 'collage Management', '12 Jan 2024',
      '20 Jan 20214', 'pending'),
  AssignmentData('Web Application', 'Hotel Management', '25 Jan 2024',
      '30 Jan 20214', 'pending'),
  AssignmentData('Digital marketing ', 'It Marketing', '2 Feb 2024',
      '8 Feb 20214', 'pending'),
];
