import 'package:financeapp/core/utils/app_assets.dart';
import 'package:financeapp/core/utils/app_color.dart';
import 'package:financeapp/core/utils/app_styles.dart';
import 'package:financeapp/core/widgets/custom_name_of_view.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 8),
            child: Column(
              children: [
                CustomNameOfView(nameText: "Profile", rightIcon: Icons.edit),

                ClipPath(
                  clipper: HeaderClipper(),
                  child: Container(
                    width: double.infinity,
                    height: 290,
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(AppAssets.logo),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(AppAssets.profilePhoto),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Yasmine Mohsen",
                          style: AppStyles.praimaryHeadLineStyle.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "Work hard in silence. Let your success be the noise.",
                          style: TextStyle(
                            fontSize: 14,
                            color: AppColor.whiteColor,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),

                ListTile(
                  leading: Icon(Icons.location_on),
                  title: Text("My Address"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Account"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.notifications),
                  title: Text("Notifications"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.devices),
                  title: Text("Devices"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.lock),
                  title: Text("Passwords"),
                  trailing: Icon(Icons.arrow_forward_ios),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// كلاس مسؤول عن رسم الكيرف
class HeaderClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80); // 👈 خليته أعمق شوية

    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstEndPoint = Offset(size.width, size.height - 80);

    path.quadraticBezierTo(
      firstControlPoint.dx,
      firstControlPoint.dy,
      firstEndPoint.dx,
      firstEndPoint.dy,
    );

    path.lineTo(size.width, 0); // يكمل لفوق
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
