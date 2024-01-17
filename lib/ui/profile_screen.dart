import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 56,),
            Container(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: Colors.white
              ),
              child: Column(
                children: [
                  InkWell(
                    onTap: (){
                      Navigator.pushNamed(context, 'stores');
                    },
                    focusColor: Colors.amber,
                    splashColor: Colors.amber,
                    highlightColor: Colors.amber,
                    child: Container(
                      padding: EdgeInsets.only(bottom: 16),
                      child: Row(
                        children: [
                          Icon(Icons.shopping_bag_outlined, color: Colors.black,),
                          SizedBox(width: 5,),
                          Text('Bizning do`konlarimiz'),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 18,)
                        ],
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: (){},
                    child: Container(
                      child: Row(
                        children: [
                          Icon(Icons.favorite_border, color: Colors.black ,),
                          SizedBox(width: 5,),
                          Text('Sevimlilar'),
                          Spacer(),
                          Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 18,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
