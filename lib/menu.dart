import 'package:flutter/material.dart';
import 'package:menudra/help.dart';
import 'package:menudra/home_screen.dart';
import 'package:menudra/perfil.dart';

import 'main.dart';

class DrawerMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [
          Colors.blue,
          Colors.green,
        ],
      ),
    ),
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          _buildDrawerHeader(),
          _buildDrawerItem(icon: Icons.home, text: 'Home', onTap: () => {
                Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()))
                
          }),

          Divider( color: Colors.transparent,),

          _buildDrawerItem(icon: Icons.account_circle, text: 'Profile', onTap: () => {
        Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PerfilScreen()))
          }),

           Divider( color: Colors.transparent,),

          _buildDrawerItem(icon: Icons.movie, text: 'Help', onTap: () => {
            Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HelpScreen()))
          }),

           Divider( color: Colors.transparent,),

          _buildDrawerItem(icon: Icons.contact_phone, text: 'Contact Info', onTap: () => {
           Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()))
          }),

          Divider( color: Colors.transparent,),
          Divider( color: Colors.transparent,),
          Divider( color: Colors.transparent,),
           Divider( color: Colors.transparent,),
          Divider( color: Colors.transparent,),

          _buildDrawerItem(icon: Icons.exit_to_app, text: 'Exit', onTap: () => {
           
          }),

           SizedBox(height: 50,),
         Center(child: Text('Version app 1.0.0'))
        ],
        
      ),
      
    )
    
    );
    
  }

  
  Widget _buildDrawerHeader() {
    return DrawerHeader(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                              "https://elcomercio.pe/resizer/yHlVmeje9JdLEROBvNgsdoVpwRs=/1200x900/smart/filters:format(jpeg):quality(75)/cloudfront-us-east-1.images.arcpublishing.com/elcomercio/KRKOINCP7JGR7KWT4HNBDSJPDA.jpg"),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Juan Diaz",
                          style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                        ),
                      ],
                    ),
                  );
  }

  Widget _buildDrawerItem(
      {IconData? icon, required String text, GestureTapCallback? onTap}) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
