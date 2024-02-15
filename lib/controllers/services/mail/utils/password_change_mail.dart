import 'package:intl/intl.dart';

String generatePasswordChangeEmail(
  String appName,
  String logoUrl,
  String codeColor,
) {
  // final formattedExpiresAt =
  //     DateFormat('h:mm a, MMM d, yyyy').format(expiresAt.toLocal());

  return '''
<!DOCTYPE html>
<html>
<head>
<title>Welcome to $appName!</title>
<style>
body {
  font-family: sans-serif;
  margin: 0;
  padding: 20px;
  background-color: #f5f5f5;
}

.container {
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
  background-color: #fff;
  border-radius: 5px;
  box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

.logo {
  text-align: center;
  margin-bottom: 20px;
}

.logo img {
  max-width: 200px;
  height: auto;
}

.header {
  text-align: center;
  font-size: 24px;
  font-weight: bold;
  margin-bottom: 20px;
}

.code-container {
  text-align: center;
  font-size: 20px;
  font-style: italic;
  margin-bottom: 20px;
}

.code {
  display: inline-block;
  padding: 10px 20px;
  background-color: $codeColor; /* Customize the color here */
  color: #fff;
  border-radius: 5px;
  font-weight: bold;
}

.instruction {
  font-size: 16px;
  margin-bottom: 20px;
}

.footer {
  text-align: center;
  font-size: 14px;
  color: #888;
  margin-top: 20px;
}

.expiry-info {
  font-size: 14px;
  margin-bottom: 20px;
  text-align: center;
}

.expiry-time {
  color: $codeColor; /* Match color with code parameter */
  font-weight: bold; /* Make the time font bold */
}
</style>
</head>
<body>
<div class="container">
  <div class="logo">
    <img src="$logoUrl" alt="$appName logo">
  </div>
  <div class="header">
    Welcome to the $appName community!
  </div>
  <div class="password-container">
    Congratulations! Your password for Efficacy has been successfully changed
  </div>
  <div class="instruction">
    Please login again, now you'll be able to explore all that $appName has to offer.
  </div>
  <div class="footer">
    If you didn't change the password and still receiving this email, please report it to the developers.
  </div>
</div>
</body>
</html>
''';
}
