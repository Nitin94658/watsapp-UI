import 'package:flutter/material.dart';
import 'main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: const Text(
                'Whatsapp'
            ),
            bottom:const TabBar(
                tabs: [
                  Tab(
                    child: Icon(Icons.camera_alt),
                  ),
                  Tab(
                    child: Text('Chat'),
                  ),
                  Tab(
                    child:Text('Status') ,
                  ),
                  Tab(
                    child: Text('Call'),
                  ),
                ]
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(width: 10),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                itemBuilder: (context) => const[
                  PopupMenuItem(value:'1', child: Text('New Group')),
                  PopupMenuItem(value:'2', child: Text('Setting')),
                  PopupMenuItem(value:'3', child: Text('Logout'))
                ]
              ),
              SizedBox(width: 10)
            ],
          ),
          body: TabBarView(
              children:[
                Text('Camera'),
                ListView.builder(
                  itemCount: 2,
                    itemBuilder: (context,index){
                      return const ListTile(
                        leading: CircleAvatar(
                          backgroundImage: NetworkImage('https://tse4.mm.bing.net/th?id=OIP.7vANJW9Ov2ToUdENFK7tNgHaD5&pid=Api&P=0'),
                        ),
                        title: Text('John Wick'),
                        subtitle: Text('where is my dog'),
                        trailing: Text('10:56'),
                      );
                    }
                ),
                Text('Status'),
                ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context,index){
                      return  ListTile(
                        leading: const CircleAvatar(
                          backgroundImage: NetworkImage('https://tse4.mm.bing.net/th?id=OIP.7vANJW9Ov2ToUdENFK7tNgHaD5&pid=Api&P=0'),
                        ),
                        title: Text('John Wick'),
                        subtitle: Text(index /2 ==0? 'Missed Audio Call' : 'Missed Video Call'),
                        trailing: Icon(index /2==0? Icons.phone : Icons.video_call),
                      );
                    }
                )
              ]
          ),
        )
    );
  }
}
