class AnalysisRequest {
  final String orderedTestCode;
  final String orderedTestDescription;
  final String diagnosticService;

  AnalysisRequest(this.orderedTestCode, this.orderedTestDescription,
      this.diagnosticService);

  AnalysisRequest.fromMap(Map<String, dynamic> lab)
      : orderedTestCode = lab["orderedTestCode"].toString(),
        orderedTestDescription = lab["orderedTestDescription"].toString(),
        diagnosticService = lab["diagnosticService"].toString();

  Map<String, dynamic> toMap() {
    return {
      'orderedTestCode': orderedTestCode,
      'orderedTestDescription': orderedTestDescription,
      'diagnosticService': diagnosticService,
    };
  }
}
