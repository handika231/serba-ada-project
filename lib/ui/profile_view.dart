import 'package:flutter/material.dart';
import 'package:serbada/ui/theme/theme.dart';

import '../bottom_navbar.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  Future<void> _signOut(SurveyorProfileProvider provider) async {
    // provider.logout();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    blurRadius: 15.0,
                    offset: Offset(0.0, 0.75),
                  ),
                ],
              ),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    child: Text(
                      "",
                      style: AppTextStyle.boldTextStyle.copyWith(fontSize: 18),
                    ),
                  ),
                  SizedBox(
                    height: 13,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // Container(
                        //   child: Image.asset(
                        //     'assets/images/profil-avatar.png',
                        //     width: 50,
                        //     height: 50,
                        //     fit: BoxFit.cover,
                        //   ),
                        // ),
                        Container(
                          padding: EdgeInsets.only(left: 10, right: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text(
                                  // provider.loginModel.data.namaLengkap,
                                  'Alwi Aulia Nuryadin',
                                  style: AppTextStyle.boldTextStyle
                                      .copyWith(fontSize: 16),
                                ),
                              ),
                              Container(
                                child: Text(
                                  // provider.loginModel.data.noHp,
                                  '08912991912',
                                  style: AppTextStyle.regularTextStyle.copyWith(
                                      fontSize: 16, color: AppColors.grayColor),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    height: 1,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 18),
                          child: Icon(
                            Icons.mail_outline_outlined,
                            color: AppColors.grayColor,
                            size: 18,
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 18),
                          child: Text(
                              // provider.loginModel.data.email,
                              'alwi@gmail.com',
                              style: AppTextStyle.regularTextStyle.copyWith(
                                fontSize: 17,
                              )),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.fromLTRB(20, 20, 20, 28),
                child: Column(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Text(
                              'Akun',
                              style: AppTextStyle.boldTextStyle
                                  .copyWith(color: AppColors.grayColor),
                            ),
                          ),
                          SizedBox(height: 2),
                          InkWell(
                            onTap: () async {
                              // AppRouter.navToChangePasswordScreenSurveyor(
                              //     context, provider);
                            },
                            child: Container(
                              padding: EdgeInsets.only(top: 10, bottom: 10),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.lightGrayColor),
                                    height: 32,
                                    width: 32,
                                    child: Icon(
                                      Icons.lock,
                                      color: AppColors.bodyTextGreyColor,
                                      size: 16,
                                    ),
                                  ),
                                  Expanded(
                                    child: Container(
                                      padding:
                                          EdgeInsets.only(left: 10, right: 10),
                                      child: Text(
                                        'Ubah Password',
                                        style:
                                            AppTextStyle.boldTextStyle.copyWith(
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Icon(
                                      Icons.chevron_right_sharp,
                                      color: AppColors.bodyTextGreyColor,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Divider(
                            height: 1,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      child: TextButton(
                          child: Text("Keluar Aplikasi",
                              style: AppTextStyle.boldTextStyle.copyWith(
                                  fontSize: 14, color: AppColors.redColor)),
                          style: ButtonStyle(
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.all(20),
                            ),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                                side: BorderSide(color: Colors.red),
                              ),
                            ),
                          ),
                          onPressed: () {
                            // _signOut(provider);
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SurveyorProfileProvider {}
