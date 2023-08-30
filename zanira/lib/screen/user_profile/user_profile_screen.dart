import 'dart:io';

import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:zanira/screen/login_screen.dart';
import 'package:zanira/screen/user_profile/user_profile_state.dart';
import 'package:zanira/screen/user_profile/user_profile_viewModel.dart';

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
            leading: const BackButton(),
            title: const Text(
              "Profile",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.tealAccent[700],
          ),
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
                                      backgroundColor: Colors.tealAccent[700],
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
                        SizedBox(
                          height: 10,
                        ),
                        Text(state.user.name),
                        GestureDetector(
                          onTap: () {},
                          child: const Text('Informasi akun'),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: const Text('Informasi Yayasan'),
                        ),
                      ]))),
        ));
  }
}
