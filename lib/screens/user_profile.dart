import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:technomanics/appwidgets/app_text_field.dart';
import 'package:technomanics/appwidgets/background.dart';
import 'package:technomanics/appwidgets/custom_elevated_button.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({Key? key}) : super(key: key);

  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  final _nameTextController = TextEditingController();
  final _collegeTextController = TextEditingController();
  final _yearTextController = TextEditingController();
  final _departmentTextController = TextEditingController();
  late double rating;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundImage(
        page: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const CircleAvatar(
                    backgroundImage: AssetImage('assets/images/user_image.png'),
                    radius: 50,
                  ),
                  Column(
                    children: [
                      const Text(
                        'Badges',
                        style: TextStyle(fontSize: 25),
                      ),
                      RatingBar.builder(
                        initialRating: 0,
                        minRating: 0,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 25,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (value) {
                          rating = value;
                        },
                      )
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              AppTextField(
                labelText: 'Name',
                hintText: 'Enter Name',
                controller: _nameTextController,
              ),
              const SizedBox(
                height: 20,
              ),
              AppTextField(
                controller: _collegeTextController,
                labelText: 'College',
                hintText: 'Enter College',
                isObscure: true,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Flexible(
                    child: AppTextField(
                      labelText: 'Name',
                      hintText: 'Enter Name',
                      controller: _nameTextController,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Flexible(
                      child: AppTextField(
                    controller: _collegeTextController,
                    labelText: 'College',
                    hintText: 'Enter College',
                    isObscure: true,
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomElevatedButton(
                btnText: 'Add Badges',
                callback: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
