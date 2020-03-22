import 'package:CoronaTracker/models/corona_case.dart';
import 'package:CoronaTracker/models/corona_case_total_count.dart';

class CoronaCaseCountry {
  final String country;
  final String countryName;
  final int totalConfirmedCount;
  final int totalDeathsCount;
  final int totalRecoveredCount;
  final List<CoronaCase> cases;

  int get totalSickCount {
    return totalConfirmedCount - totalDeathsCount - totalRecoveredCount;
  }

  CoronaCaseCountry(
      {this.country,
      this.countryName,
      this.totalConfirmedCount,
      this.totalDeathsCount,
      this.totalRecoveredCount,
      this.cases});

  CoronaTotalCount get coronaTotalCount {
    return CoronaTotalCount(
        confirmed: totalConfirmedCount,
        deaths: totalDeathsCount,
        recovered: totalRecoveredCount);
  }
}
