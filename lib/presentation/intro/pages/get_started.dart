import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/button/basic_app_button.dart';
import 'package:spotify/core/configs/assets/app_images.dart';
import 'package:spotify/core/configs/assets/app_vectors.dart';
import 'package:spotify/core/configs/theme/app_color.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 40
            ),
            child: SafeArea(
              child: Column(
                children: [
                  Align(
                    alignment:Alignment.topCenter,
                    child: SvgPicture.asset(
                      AppVectors.logo
                    ),
                  ),
                  Spacer(),
                  Text('Enjoy Listening To Music',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize:18,
                    color: Colors.white
                  ),
                  ),
                  SizedBox(height: 21,),
                  Text('The default interactive shell is now zsh To update your account to use zsh, please run',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize:13,
                        color: AppColors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20,),
                  BasicAppButton(onPressed: (){}, title: "Get Started")
                         ]
              ),
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(AppImages.introBG,)
              )
            ),
          ),
          Container(
            color: Colors.black.withOpacity(.15),
          )
        ],
      ),
    );
  }
}
