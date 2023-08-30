//bikin UI nya dulu ya
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:zanira/screen/pengumpulan/pengumpulan_state.dart';
import 'package:zanira/screen/pengumpulan/pengumpulan_viewModel.dart';
import 'package:zanira/style/color.dart';
import 'package:fl_chart/fl_chart.dart';

class pengumpulanScreen extends ConsumerWidget {
  late PengumpulanViewModel pengumpulanViewModel;
  late PengumpulanState state;
  RefreshController refreshController = RefreshController(initialRefresh: true);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    pengumpulanViewModel = ref.watch(PengumpulanVMProvider.notifier);
    state = ref.watch(PengumpulanVMProvider);
    return SmartRefresher(
        controller: refreshController,
        onRefresh: () async {
          refreshController.headerMode?.value = RefreshStatus.idle;
          pengumpulanViewModel.updateAllData();
          refreshController.loadComplete();
        },
        child: Scaffold(
          //Topbar judul dan backbutton
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Align(
              alignment: Alignment.centerRight,
              child: Text("Pengumpulan",
                  style: TextStyle(
                      color: blackprimary,
                      fontSize: 18,
                      fontWeight: FontWeight.bold)),
            ),
            leadingWidth: 100,
            leading: Icon(
              Icons.arrow_circle_left_outlined,
              color: blackprimary,
              size: 35,
            ),
          ),

          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //Box total terkumpul
                Container(
                  decoration: BoxDecoration(
                      color: lightbackground,
                      border: Border.all(color: lightbackground, width: 5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: Column(
                    children: <Widget>[
                      //Textview for bacaan terkumpul
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Terkumpul",
                            style: TextStyle(color: blackprimary, fontSize: 12),
                          )),
                      //Textview for nominal
                      Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "Rp. ${state.terkumpul},-",
                            style: TextStyle(
                                color: blackprimary,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),

                //Padding
                SizedBox(height: 10),

                //Box untuk grafik
                Container(
                  padding: EdgeInsets.only(top: 20),
                  constraints: BoxConstraints(maxHeight: 150),
                  decoration: BoxDecoration(
                      color: lightbackground,
                      border: Border.all(color: lightbackground, width: 5),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  child: BarChart(BarChartData(
                      titlesData: FlTitlesData(
                          leftTitles:
                              AxisTitles(axisNameWidget: Text('Nominal')),
                          bottomTitles:
                              AxisTitles(axisNameWidget: Text('Bulan'))),
                      borderData: FlBorderData(
                        border: const Border(
                            top: BorderSide.none,
                            right: BorderSide.none,
                            left: BorderSide(width: 1),
                            bottom: BorderSide(width: 1)),
                      ),
                      barGroups: state.yearlyNominal.map((e) {
                        print('a');
                        print(e.month);
                        print(e.nominal);
                        return BarChartGroupData(x: e.month, barRods: [
                          BarChartRodData(toY: double.parse(e.nominal))
                        ]);
                      }).toList())),
                ),

                //Padding
                SizedBox(
                  height: 15,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    //Sort by Month and
                    TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            fixedSize: Size(160, 40),
                            backgroundColor: lightbackground,
                            // padding: EdgeInsets.all(10),
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: blackprimary,
                            )),
                        onPressed: () {
                          showDialog(
                              context: context,
                              builder: (context) {
                                String choosenYear = state.yearFilter;
                                return AlertDialog(
                                  backgroundColor: lightbackground,
                                  content: Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Align(
                                          alignment: Alignment.center,
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              //Minus Sign
                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                      Icons
                                                          .indeterminate_check_box_outlined,
                                                      size: 30)),

                                              //Padding
                                              SizedBox(
                                                width: 10,
                                              ),

                                              //Tahun Textview
                                              Container(
                                                  child: Text(
                                                choosenYear,
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 30,
                                                ),
                                              )),

                                              //Padding
                                              SizedBox(
                                                width: 10,
                                              ),
                                              //Plus sign

                                              IconButton(
                                                  onPressed: () {},
                                                  icon: Icon(
                                                      Icons.add_box_outlined,
                                                      size: 30)),
                                            ],
                                          ),
                                        ),

                                        //Padding
                                        SizedBox(
                                          height: 20,
                                        ),

                                        //There should be an easier way to do this
                                        GestureDetector(
                                            onTap: () {
                                              pengumpulanViewModel.updateDate(
                                                  '1', '2023');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Januari")),
                                        GestureDetector(
                                            onTap: () {
                                              pengumpulanViewModel.updateDate(
                                                  '2', '2023');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Februari")),
                                        GestureDetector(
                                            onTap: () {
                                              pengumpulanViewModel.updateDate(
                                                  '3', '2023');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Maret")),
                                        GestureDetector(
                                            onTap: () {
                                              pengumpulanViewModel.updateDate(
                                                  '4', '2023');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("April")),
                                        GestureDetector(
                                            onTap: () {
                                              pengumpulanViewModel.updateDate(
                                                  '5', '2023');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Mei")),
                                        GestureDetector(
                                            onTap: () {
                                              pengumpulanViewModel.updateDate(
                                                  '6', '2023');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Juni")),
                                        GestureDetector(
                                            onTap: () {
                                              pengumpulanViewModel.updateDate(
                                                  '7', '2023');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Juli")),
                                        GestureDetector(
                                            onTap: () {
                                              pengumpulanViewModel.updateDate(
                                                  '8', '2023');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Agustus")),
                                        GestureDetector(
                                            onTap: () {
                                              pengumpulanViewModel.updateDate(
                                                  '9', '2023');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("September")),
                                        GestureDetector(
                                            onTap: () {
                                              pengumpulanViewModel.updateDate(
                                                  '10', '2023');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Oktober")),
                                        GestureDetector(
                                            onTap: () {
                                              pengumpulanViewModel.updateDate(
                                                  '11', '2023');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("November")),
                                        GestureDetector(
                                            onTap: () {
                                              pengumpulanViewModel.updateDate(
                                                  '12', '2023');
                                              Navigator.of(context).pop();
                                            },
                                            child: Text("Desember")),
                                      ],
                                    ),
                                  ),
                                );
                              });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              choosenMonth(state.monthFilter),
                              style: TextStyle(color: blackprimary),
                            ),
                            Icon(
                              Icons.arrow_drop_down_circle,
                              color: blackprimary,
                              size: 20,
                            )
                          ],
                        )),

                    TextButton(
                        style: TextButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            fixedSize: Size(160, 40),
                            backgroundColor: lightbackground,
                            // padding: EdgeInsets.all(10),
                            textStyle: TextStyle(
                              fontSize: 15,
                              color: blackprimary,
                            )),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              backgroundColor: lightbackground,
                              content: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Text("Tanggal"),
                                    Text("Kategori"),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              state.kategori,
                              style: TextStyle(color: blackprimary),
                            ),
                            Icon(
                              Icons.arrow_drop_down_circle,
                              color: blackprimary,
                              size: 20,
                            )
                          ],
                        ))
                  ],
                ),
                DataTable(
                    columns: [
                      DataColumn(label: Text('Tanggal')),
                      DataColumn(label: Text('Kategori')),
                      DataColumn(label: Text('Nominal')),
                      DataColumn(label: Text('Detail')),
                      DataColumn(label: Text('Edit'))
                    ],
                    rows: List.generate(state.monthlyList.length, (index) {
                      return DataRow(cells: [
                        DataCell(SizedBox(
                          child: Text(state.monthlyList[index].tanggal),
                        )),
                        DataCell(SizedBox(
                          child: Text(state.monthlyList[index].kategori),
                        )),
                        DataCell(SizedBox(
                          child: Text('${state.monthlyList[index].nominal}'),
                        )),
                        DataCell(SizedBox(
                            child: GestureDetector(
                                onTap: () {}, child: Text('Detail')))),
                        DataCell(SizedBox(
                            width: 10,
                            child: GestureDetector(child: Text('Detail')))),
                      ]);
                    }))
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ));
  }

  String choosenMonth(String monthFilter) {
    switch (monthFilter) {
      case '1':
        return 'January';
      case '2':
        return 'January';
      case '3':
        return 'January';
      case '4':
        return 'January';
      case '5':
        return 'January';
      case '6':
        return 'Juni';
      case '7':
        return 'Juli';
      case '8':
        return 'Agustus';
      case '9':
        return 'September';
      case '10':
        return 'Oktober';
      case '11':
        return 'November';
      case '12':
        return 'Desember';
      default:
        return '';
    }
  }
}
