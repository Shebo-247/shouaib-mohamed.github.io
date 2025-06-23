import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shouaib_mohamed_portfolio/extensions/size_extensions.dart';
import 'package:shouaib_mohamed_portfolio/theme/colors.dart';
import 'package:shouaib_mohamed_portfolio/theme/styles.dart';
import 'package:shouaib_mohamed_portfolio/widgets/custom_text_field.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  bool _isValidName = false;
  bool _isValidEmail = false;
  bool _isValidSubject = false;
  bool _isValidMessage = false;

  void onSubmit() async {
    Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'shouaibmoha247@gmail.com',
      query: 'subject=${_subjectController.text}&body=${'Name: ${_nameController.text}\nEmail: ${_emailController.text}\n\n${_messageController.text}'}',
    );
    if (await canLaunchUrl(emailUri)) {
      await launchUrl(emailUri).then((value) {
        resetForm();
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Email client launched successfully')),
        );
      });
    } else {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text('Could not launch email client')));
    }
  }

  void resetForm() {
    _nameController.clear();
    _emailController.clear();
    _subjectController.clear();
    _messageController.clear();
    setState(() {
      _isValidName = false;
      _isValidEmail = false;
      _isValidSubject = false;
      _isValidMessage = false;
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _subjectController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Feel free to reach out for collaborations or just a friendly chat!',
            style: AppStyles.kTextStyle16Regular,
          ),
          15.ph,
          // Contact Form
          Row(
            children: [
              Expanded(
                child: CustomTextField(
                  controller: _nameController,
                  onChanged: (value) {
                    setState(() {
                      if (value.isEmpty) {
                        _isValidName = false;
                      } else {
                        _isValidName = true;
                      }
                    });
                  },
                  hint: 'Full Name',
                ),
              ),
              15.pw,
              Expanded(
                child: CustomTextField(
                  controller: _emailController,
                  onChanged: (value) {
                    setState(() {
                      if (value.isEmpty ||
                          !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        _isValidEmail = false;
                      } else {
                        _isValidEmail = true;
                      }
                    });
                  },
                  hint: 'Email Address',
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ],
          ),
          15.ph,
          CustomTextField(
            controller: _subjectController,
            onChanged: (value) {
              setState(() {
                if (value.isEmpty) {
                  _isValidSubject = false;
                } else {
                  _isValidSubject = true;
                }
              });
            },
            hint: 'Subject',
          ),
          15.ph,
          CustomTextField(
            controller: _messageController,
            onChanged: (value) {
              setState(() {
                if (value.isEmpty) {
                  _isValidMessage = false;
                } else {
                  _isValidMessage = true;
                }
              });
            },
            hint: 'Your Message',
            maxLines: 5,
          ),
          15.ph,
          // Submit Button
          FittedBox(
            child: MaterialButton(
              onPressed: isFormValid ? onSubmit : null,
              color: AppColors.kGreenColor587,
              disabledColor: AppColors.kGreenColor587.withValues(alpha: 0.1),
              mouseCursor:
                  isFormValid
                      ? SystemMouseCursors.click
                      : SystemMouseCursors.forbidden,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.r),
              ),
              padding: EdgeInsets.symmetric(vertical: 25.h, horizontal: 50.w),

              child: Row(
                children: [
                  Icon(Icons.send),
                  10.pw,
                  Text('Submit', style: AppStyles.kTextStyle12Regular),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool get isFormValid =>
      _isValidName && _isValidEmail && _isValidSubject && _isValidMessage;
}
