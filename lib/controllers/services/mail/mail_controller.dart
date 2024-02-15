import 'package:cloudinary/cloudinary.dart';
import 'package:efficacy_user/config/config.dart';
import 'package:efficacy_user/controllers/services/mail/utils/password_change_mail.dart';
import 'package:efficacy_user/controllers/services/mail/utils/verification_code_mail.dart';
import 'package:efficacy_user/models/user/user_model.dart';
import 'package:efficacy_user/utils/database/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

part 'functions/_send_verification_code_mail_impl.dart';
part 'functions/_send_password_change_mail.dart';

class MailController {
  const MailController._();
  static const String _backendBaseUrl = "https://mail.efficacy.gdscnits.in";
  static const String _mailSendRoute = "/api/v1/mail/send";

  static Future<void> sendVerificationCodeMail({
    required String code,
    required String email,
    required DateTime expiresAt,
  }) {
    return _sendVerificationCodeMailImpl(
      code: code,
      email: email,
      expiresAt: expiresAt,
    );
  }

  static Future<void> sendPasswordChangeMail({
    required String email,
  }) {
    return _sendPasswordChangeMailImpl(email: email);
  }
}
