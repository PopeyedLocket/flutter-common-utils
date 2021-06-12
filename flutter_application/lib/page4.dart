/* how to disable null safety
    temporary fix to get flutter charts library working
      this lib is developed internally and not accepting public pull requests
      this lib is just a mirror of the internal one, which is still being
      maintained but the mirror is only synced about 1-2 times a year. at the
      end of the below thread someone from google said this null safelty issue
      has been fixed in the interal version but will be updated in the public
      version in a few months (from March 2021)
      https://github.com/google/charts/issues/579
    remove "// @dart=2.9" from the 1st line of the main.dart file when the
    mirror is updated
https://stackoverflow.com/questions/65032275/error-a-library-cant-opt-out-of-null-safety-by-default-when-using-sound-null
*/
import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class Page4 extends StatefulWidget {
  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  void go_to_line_graph() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => LineChartPage()));
  }

  void go_to_bar_chart() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => BarChartPage()));
  }

  void go_to_pie_chart() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => PieChartPage()));
  }

  void go_to_scatter_plot() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ScatterPlotPage()));
  }

  void go_to_combined_chart() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CombinedChartPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Charts"),
        ),
        body: Align(
            alignment: Alignment.center,
            child: Column(children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_line_graph,
                      child:
                          Text("Line Graph", style: TextStyle(fontSize: 25)))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_bar_chart,
                      child:
                          Text("Bar Chart", style: TextStyle(fontSize: 25)))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_pie_chart,
                      child:
                          Text("Pie Chart", style: TextStyle(fontSize: 25)))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_scatter_plot,
                      child: Text("Scatter Plot",
                          style: TextStyle(fontSize: 25)))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_combined_chart,
                      child: Text("Combined Chart",
                          style: TextStyle(fontSize: 25)))),
            ])));
  }
}

class LineChartPage extends StatefulWidget {
  @override
  _LineChartPageState createState() => _LineChartPageState();
}

class _LineChartPageState extends State<LineChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Line Chart"),
      ),
      body: SimpleLineChart.withSampleData(),
    );
  }
}

class SimpleLineChart extends StatelessWidget {
  final List<charts.Series<Point, double>> seriesList;
  final bool animate;

  SimpleLineChart(this.seriesList, {this.animate = false});
  // named vs positional arguments "{var}" is a named optional argument
  // https://stackoverflow.com/questions/13264230/what-is-the-difference-between-named-and-positional-parameters-in-dart

  /// Creates a [LineChart] with sample data and no transition.
  factory SimpleLineChart.withSampleData() {
    return SimpleLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.LineChart(
      seriesList,
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<Point, double>> _createSampleData() {
    final data = [
      Point(1, 35),
      Point(2, 25),
      Point(3, 100),
      Point(4, 75),
      Point(5, 165),
      Point(6, 155),
      Point(7, 125),
      Point(8, 135),
    ];

    return [
      charts.Series<Point, double>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (Point p, _) => p.x,
        measureFn: (Point p, _) => p.y,
        data: data,
      )
    ];
  }
}

class Point {
  final double x;
  final double y;
  Point(this.x, this.y);
}

class BarChartPage extends StatefulWidget {
  @override
  _BarChartPageState createState() => _BarChartPageState();
}

class _BarChartPageState extends State<BarChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bar Chart"),
        // toolbarHeight: 0.0, // remove appBar
      ),
      body: SimpleBarChart.withSampleData(),
      // body: Text("asdadsf"),
      // body: charts.BarChart(series),
    );
  }
}

class SimpleBarChart extends StatelessWidget {
  final List<charts.Series<Bar, String>> seriesList;
  final bool animate;

  SimpleBarChart(this.seriesList, {this.animate = false});
  // named vs positional arguments "{var}" is a named optional argument
  // https://stackoverflow.com/questions/13264230/what-is-the-difference-between-named-and-positional-parameters-in-dart

  /// Creates a [BarChart] with sample data and no transition.
  factory SimpleBarChart.withSampleData() {
    return SimpleBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.BarChart(
      seriesList,
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<Bar, String>> _createSampleData() {
    final data = [
      Bar(1, 35),
      Bar(2, 25),
      Bar(3, 100),
      Bar(4, 75),
      Bar(5, 175),
      Bar(6, 150),
      Bar(7, 125),
      Bar(8, 135),
    ];

    return [
      charts.Series<Bar, String>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (Bar b, _) => b.x.toString(),
        measureFn: (Bar b, _) => b.y,
        data: data,
      )
    ];
  }
}

class Bar {
  final double x;
  final double y;
  Bar(this.x, this.y);
}

class PieChartPage extends StatefulWidget {
  @override
  _PieChartPageState createState() => _PieChartPageState();
}

class _PieChartPageState extends State<PieChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pie Chart"),
      ),
      body: SimplePieChart.withSampleData(),
    );
  }
}

class SimplePieChart extends StatelessWidget {
  final List<charts.Series<Slice, double>> seriesList;
  final bool animate;

  SimplePieChart(this.seriesList, {this.animate = false});
  // named vs positional arguments "{var}" is a named optional argument
  // https://stackoverflow.com/questions/13264230/what-is-the-difference-between-named-and-positional-parameters-in-dart

  /// Creates a [PieChart] with sample data and no transition.
  factory SimplePieChart.withSampleData() {
    return SimplePieChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.PieChart(
      seriesList,
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<Slice, double>> _createSampleData() {
    final data = [
      Slice(1, 35),
      Slice(2, 25),
      Slice(3, 100),
      Slice(4, 75),
      Slice(5, 165),
      Slice(6, 155),
      Slice(7, 125),
      Slice(8, 135),
    ];

    return [
      charts.Series<Slice, double>(
        id: 'Sales',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (Slice s, _) => s.start_angle,
        measureFn: (Slice s, _) => s.angle_range,
        data: data,
      )
    ];
  }
}

class Slice {
  final double start_angle; // starting at vertical clockwise
  final double angle_range; // aka width of the slice
  Slice(this.start_angle, this.angle_range);
}

class ScatterPlotPage extends StatefulWidget {
  @override
  _ScatterPlotPageState createState() => _ScatterPlotPageState();
}

class _ScatterPlotPageState extends State<ScatterPlotPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Scatter Plot"),
      ),
      body: SimpleScatterPlot.withSampleData(),
    );
  }
}

class SimpleScatterPlot extends StatelessWidget {
  final List<charts.Series<Point2, double>> seriesList;
  final bool animate;

  SimpleScatterPlot(this.seriesList, {this.animate = false});
  // named vs positional arguments "{var}" is a named optional argument
  // https://stackoverflow.com/questions/13264230/what-is-the-difference-between-named-and-positional-parameters-in-dart

  /// Creates a [LineChart] with sample data and no transition.
  factory SimpleScatterPlot.withSampleData() {
    return SimpleScatterPlot(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return charts.ScatterPlotChart(
      seriesList,
      animate: animate,
    );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<Point2, double>> _createSampleData() {
    final data = [
      Point2(1, 35, 5.0),
      Point2(2, 25, 5.0),
      Point2(3, 105, 5.0),
      Point2(4, 75, 5.0),
      Point2(5, 165, 5.0),
      Point2(6, 155, 5.0),
      Point2(7, 125, 5.0),
      Point2(8, 135, 5.0),
    ];

    return [
      charts.Series<Point2, double>(
        id: 'Sales',
        colorFn: (Point2 p, _) {
          if (p.y > 100) {
            return charts.MaterialPalette.red.shadeDefault;
          } else {
            return charts.MaterialPalette.blue.shadeDefault;
          }
        },
        domainFn: (Point2 p, _) => p.x,
        measureFn: (Point2 p, _) => p.y,
        radiusPxFn: (Point2 p, _) => p.r,
        data: data,
      )
    ];
  }
}

class Point2 {
  final double x;
  final double y;
  final double r; // radius
  Point2(this.x, this.y, this.r);
}

class CombinedChartPage extends StatefulWidget {
  @override
  _CombinedChartPageState createState() => _CombinedChartPageState();
}

class _CombinedChartPageState extends State<CombinedChartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Combined Chart"),
        ),
        body: NumericComboLineBarChart.withSampleData());
  }
}

class NumericComboLineBarChart extends StatelessWidget {
  final List<charts.Series<LinearSales, int>> seriesList;
  final bool animate;

  NumericComboLineBarChart(this.seriesList, {this.animate = false});

  /// Creates a [ComboChart] with sample data and no transition.
  factory NumericComboLineBarChart.withSampleData() {
    return NumericComboLineBarChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new charts.NumericComboChart(seriesList,
        animate: animate,
        // Configure the default renderer as a line renderer. This will be used
        // for any series that does not define a rendererIdKey.
        defaultRenderer: new charts.LineRendererConfig(),
        // Custom renderer configuration for the bar series.
        customSeriesRenderers: [
          new charts.BarRendererConfig(
              // ID used to link series to this renderer.
              customRendererId: 'customBar')
        ]);
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<LinearSales, int>> _createSampleData() {
    final desktopSalesData = [
      new LinearSales(0, 4),
      new LinearSales(1, 22),
      new LinearSales(2, 88),
      new LinearSales(3, 70),
    ];

    final tableSalesData = [
      new LinearSales(0, 5),
      new LinearSales(1, 25),
      new LinearSales(2, 100),
      new LinearSales(3, 75),
    ];

    final mobileSalesData = [
      new LinearSales(0, 10),
      new LinearSales(1, 50),
      new LinearSales(2, 200),
      new LinearSales(3, 150),
    ];

    return [
      charts.Series<LinearSales, int>(
        id: 'Desktop',
        colorFn: (_, __) => charts.MaterialPalette.blue.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: desktopSalesData,
      )
        // Configure our custom bar renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customBar'),
      charts.Series<LinearSales, int>(
        id: 'Tablet',
        colorFn: (_, __) => charts.MaterialPalette.red.shadeDefault,
        domainFn: (LinearSales sales, _) => sales.year,
        measureFn: (LinearSales sales, _) => sales.sales,
        data: tableSalesData,
      )
        // Configure our custom bar renderer for this series.
        ..setAttribute(charts.rendererIdKey, 'customBar'),
      charts.Series<LinearSales, int>(
          id: 'Mobile',
          colorFn: (_, __) => charts.MaterialPalette.green.shadeDefault,
          domainFn: (LinearSales sales, _) => sales.year,
          measureFn: (LinearSales sales, _) => sales.sales,
          data: mobileSalesData),
    ];
  }
}

class LinearSales {
  final int year;
  final int sales;
  LinearSales(this.year, this.sales);
}
