import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:zanira/screen/login_screen.dart';
import 'package:zanira/screen/user_profile/user_profile_state.dart';
import 'package:zanira/screen/user_profile/user_profile_viewModel.dart';
import 'package:zanira/style/color.dart';

class UserProfile extends ConsumerWidget {
  final refresher = RefreshController(initialRefresh: true);
  final _formfield = GlobalKey<FormState>();
  late UserProfileViewModel userProfileViewModel;
  late UserProfileState state;
  bool loading = true;
  File? _imageFile;
  //final imagePicker = ImagePicker();

  // TextEditingController nameController = TextEditingController();
  // TextEditingController emailController = TextEditingController();

  // Future<String> getImage() async {
  //   final pickedImage = await imagePicker.getImage(source: ImageSource.gallery);
  //   if (pickedImage != null) {
  //     _imageFile = File(pickedImage.path);
  //     return getStringImage(_imageFile) ?? '';
  //   }
  //   return '';
  // }

  @override
  Widget build(BuildContext context, ref) {
    userProfileViewModel = ref.watch(userProfileVMProvider.notifier);
    state = ref.watch(userProfileVMProvider);
    return SmartRefresher(
        controller: refresher,
        onRefresh: () {
          refresher.headerMode?.value = RefreshStatus.idle;
          userProfileViewModel.getProfile();
          refresher.loadComplete();
        },
        child: Scaffold(
          appBar: AppBar(
              // leading: const BackButton(),
              leadingWidth: 100,
              leading: Icon(
                Icons.arrow_circle_left_outlined,
                color: blackprimary,
                size: 35,
              ),
              title: const Text(
                "Profile",
                style: TextStyle(color: Color(0xFF3B4B1A)),
              ),
              backgroundColor: Colors.white),
          body: SingleChildScrollView(
              child: Form(
                  key: _formfield,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 50,
                        ),
                        Center(
                          child: GestureDetector(
                              child: Stack(children: [
                                state.user.image != null
                                    ? Container(
                                        width: 200,
                                        height: 200,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(100),
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    '${state.user.image}'),
                                                fit: BoxFit.cover)))
                                    : const CircleAvatar(
                                        radius: 100,
                                        backgroundColor: Colors.grey,
                                        child: Icon(
                                          Icons.account_circle,
                                          color: Colors.white,
                                          size: 100,
                                        )),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: CircleAvatar(
                                      backgroundColor: blackprimary,
                                      child: const Icon(
                                        Icons.camera_alt,
                                        color: Colors.white,
                                      ),
                                    ))
                              ]),
                              onTap: () async {
                                // String image = await getImage();
                                // if (image != '') {
                                //   // userProfileViewModel.updateProfile(
                                //   //     state.user.name,
                                //   //     image,
                                //   //     state.user.email);
                                // }
                              }),
                        ),
                        SizedBox(height: 10),
                        Text(state.user.name,
                            style:
                                TextStyle(fontSize: 25, color: blackprimary)),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () {
                            //enter popup
                          },
                          child: const Text('Informasi akun',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF3B4B1A))),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            //enter popup
                          },
                          child: const Text(
                            'Informasi Yayasan',
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF3B4B1A)),
                          ),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            //put popup
                          },
                          child: const Text('Kelola akun',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF3B4B1A))),
                        ),
                        SizedBox(height: 15),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => LoginScreen())));
                          },
                          child: const Text('Keluar',
                              style: TextStyle(
                                  fontSize: 20, color: Color(0xFF3B4B1A))),
                        ),
                      ]))),
        ));
  }
}
