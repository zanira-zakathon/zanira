import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:icon_decoration/icon_decoration.dart';
import 'package:zanira/data/pendistribusian/entity/pendistribusian.dart';
import 'package:zanira/screen/pengumpulan/pengumpulan_screen.dart';

import 'package:zanira/screen/user_profile/user_profile_screen.dart';
import 'package:zanira/screen/home/home_state.dart';
import 'package:zanira/screen/home/home_viewModel.dart';
import 'package:zanira/style/button.dart';
import 'package:zanira/style/color.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomeScreen extends ConsumerWidget {
  RefreshController refreshController = RefreshController(initialRefresh: true);
  late HomeViewModel homeViewModel;
  late HomeState state;
  @override
  Widget build(BuildContext context, ref) {
    homeViewModel = ref.watch(HomeVMProvider.notifier);
    state = ref.watch(HomeVMProvider);
    return SmartRefresher(
        controller: refreshController,
        onRefresh: () async {
          refreshController.headerMode?.value = RefreshStatus.idle;
          homeViewModel.updateAllData();
          refreshController.loadComplete();
        },
        child: Scaffold(
          backgroundColor: Colors.white,
          resizeToAvoidBottomInset: false,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              //Topbar
              Container(
                color: header,
                height: 135,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                      child: Container(
                        height: 70,
                        width: 150,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50),
                                bottomLeft: Radius.circular(50))),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                state.user.name.split(' ').last,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 15, color: blackprimary),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                        width: 2, color: blackprimary)),
                                child: Icon(
                                  Icons.person,
                                  color: blackprimary,
                                ),
                              )
                            ]),
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => UserProfile())));
                      }),
                ),
              ),

              //Padding
              SizedBox(
                height: 20,
              ),

              //BodyPart
              Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    //Bagan Berita
                    Container(
                      child: Text(
                        'Berita Terbaru',
                        style: TextStyle(
                            color: blackprimary,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),

                    //Box berita, can be scrolled and inside is ListView, untuk zidan, mohon dibantu
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          border: Border.all(color: lightbackground, width: 5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          )),
                      constraints: const BoxConstraints(maxHeight: 250),
                      child: ListView.builder(
                          itemCount: state.announcementList.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                                onTap: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                            content: Container(
                                                height: 300,
                                                color: Colors.white,
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(state
                                                              .announcementList[
                                                                  index]
                                                              .title),
                                                          Text(
                                                              '${state.announcementList[index].createdAt}')
                                                        ],
                                                      ),
                                                      Text(state
                                                          .announcementList[
                                                              index]
                                                          .text)
                                                    ])));
                                      });
                                },
                                child: Card(
                                    color: Colors.green,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(state
                                                    .announcementList[index]
                                                    .title),
                                                Text(
                                                    '${state.announcementList[index].createdAt}')
                                              ],
                                            ),
                                            Text(state
                                                .announcementList[index].text)
                                          ]),
                                    )));
                          }),
                    ),

                    //Padding
                    SizedBox(
                      height: 20,
                    ),

                    //Button untuk ke pengumpulan zakat
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => pengumpulanScreen()));
                        },
                        style: darkButton_home,
                        child: Text("Pengumpulan Zakat",
                            style: TextStyle(fontWeight: FontWeight.bold))),

                    //Button untuk ke distribusi zakat
                    ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => pengumpulanScreen()));
                        },
                        style: darkButton_home,
                        child: Text("Distribusi Zakat",
                            style: TextStyle(fontWeight: FontWeight.bold))),

                    SizedBox(
                      height: 20,
                    ),

                    //On going Distribution, using listview
                    // SingleChildScrollView(
                    //     scrollDirection: Axis.vertical,
                    //     child:
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: lightbackground,
                          border: Border.all(color: lightbackground, width: 5),
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          )),
                      constraints: BoxConstraints(maxHeight: 150),
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.pendistribusianPlanList.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                                leading: Text(state
                                    .pendistribusianPlanList[index].kategori),
                                title: Text(state
                                    .pendistribusianPlanList[index].tanggal),
                                trailing: Text(state
                                    .pendistribusianPlanList[index].tempat));
                          }),
                    ) //),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
