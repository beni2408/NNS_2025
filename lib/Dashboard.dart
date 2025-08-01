import 'package:nns_25/AppTheme.dart';
import'package:flutter/material.dart';
// import './signuppage.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import './notificationdashboardpage.dart';


// class Invitation1{
//   final String pname;
//   String stus;
//   final String organi;
//   final String descrip;
//
//   Invitation1({
//     required this.pname,
//     required this.stus,
//     required this.organi,
//     required this.descrip,
//   });
//
// }
class Dashboard extends StatefulWidget {
  final String nameD;
  final String emailD;
  final String passwordD;
  const Dashboard({super.key,
    required this.nameD,
    required this.emailD,
    required this.passwordD,
  });

  @override
  State<Dashboard> createState() => _DashboardState();
}



class _DashboardState extends State<Dashboard> {

  List<Widget> acceptedWidgets = [];
  List<Widget> pendingWidgets = [];
  List<Widget> currentWidgets = [];

  @override
  Widget build(BuildContext context) {
    final named = widget.nameD;
    final emaild = widget.emailD;
    final  passwordd = widget.passwordD;
    final DateTime now = DateTime.now();
    String formattedDate = DateFormat('MMMM d, y').format(now);
    String currentPage = "dashboard"; // You control this when navigating









// drawer Elements widget
    Widget drawerElements(optionname, iconname, iconcolor,  navigatorpage) {
      return Row(

        children: [
          TextButton(


              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> navigatorpage));
              }, child:  Row(
            children: [
              SizedBox(width: 20,),

              Icon(iconname, size: 22, color: iconcolor),
              SizedBox(width: 20,),
              Text(optionname, style: TextStyle(fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold),),

            ],
          )

          ),
        ],
      );
    }




    // widget for accepted invitations
    Widget acceptedInviteCard(String acceptedprojname, String status, String organizer, String description) {

      return SizedBox(

        width: 380,
        child: Card(
          color: AppTheme.cardColor,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.green, // Set the color you want
                  width:7.0,          // Set the width you want
                ),
              ),
              borderRadius: BorderRadius.circular(12),

            ),
            child: Padding(

              padding: EdgeInsets.all(16.0),
              child: Column(


                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Title and Status
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          acceptedprojname,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFCEFDCB),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 11, vertical: 3),
                        child: Text(
                          status,
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(
                              0xFF008F29)),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 18),
                  Text("Organizer: $organizer", style: TextStyle(fontSize: 16)),

                  SizedBox(height: 6),
                  Text(description, style: TextStyle(fontSize: 15)),

                  SizedBox(height: 12),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(FontAwesomeIcons.calendarCheck,color: Colors.greenAccent,),
                      SizedBox(width: 12,),

                      Text(" Joined: ${formattedDate}"),

                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    // widget for the current execution

    Widget currentexe(String acceptedprojname, String status, String organizer, String description) {

      return SizedBox(

        width: 380,
        child: Card(
          color: AppTheme.cardColor,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(decoration: BoxDecoration(
            border: Border(
              left: BorderSide(
                color: AppTheme.primaryColor, // Set the color you want
                width:7.0,          // Set the width you want
              ),
            ),
            borderRadius: BorderRadius.circular(12),

          ),
            child: Padding(

              padding: EdgeInsets.all(16.0),
              child: Column(


                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Title and Status
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          acceptedprojname,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(



                          color: Color(0x9CDBFFFF),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 11, vertical: 3),
                        child: Text(
                          status,
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.blueAccent),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 18),
                  Text("Organizer: $organizer", style: TextStyle(fontSize: 16)),

                  SizedBox(height: 6),
                  Text(description, style: TextStyle(fontSize: 15)),

                  SizedBox(height: 12),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(FontAwesomeIcons.solidCalendarDays,color: Colors.blue, size: 17,),
                      SizedBox(width: 12,),

                      Text(" Ends: ${formattedDate}"),
                      SizedBox(width: 12,),

                      Container(
                        child: Row(
                          children: [
                            CircleAvatar(

                              radius: 10, backgroundColor: Colors.red,
                              child: Text("3" , style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold ),),
                              // child:  Icon(FontAwesomeIcons.exclamation, size: 11, color: Colors.white,) ,
                            ),
                            SizedBox(width: 02,),
                            Text(" pending weightages" ,style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 13),),
                          ],
                        ),
                      )



                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }



    Widget overallPerks(){
      return SizedBox(

        width: 500,
        height: 180,
        child: Card(


          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Container(

            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.blueAccent, AppTheme.primaryColor, ],begin: Alignment.topLeft, end: Alignment.bottomLeft),
              borderRadius: BorderRadius.circular(16),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Total Perks Earned: ",style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w800),),
                  Text("1,250",style: TextStyle(color: Colors.white, fontSize: 50, fontWeight: FontWeight.bold),),
                  Text("across all  active executions",style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w400,) )
                ],
              ),
            ),
          ),
        ),
      );
    }


    // // widget for pending card
    Widget addinngToaccepted (pname, stus, org, desc){
      // var pname = keyvalue.pendingprojname;
      // var stus = keyvalue.staus;
      // var org = keyvalue.organizer;
      // var desc = keyvalue.description;

      return acceptedInviteCard(pname, stus, org, desc);
    }
    Widget pendingInviteCard(String pendingprojname, String status, String organizer, String description) {

      return SizedBox(

        width: 380,
        child: Card(
          color: AppTheme.cardColor,
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Container(
            decoration: BoxDecoration(
              border: Border(
                left: BorderSide(
                  color: Colors.orange, // Set the color you want
                  width:7.0,          // Set the width you want
                ),
              ),
              borderRadius: BorderRadius.circular(12),

            ),
            child: Padding(

              padding: EdgeInsets.all(16.0),
              child: Column(


                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  // Title and Status
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          pendingprojname,
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFFDE4CB),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 11, vertical: 3),
                        child: Text(
                          status,
                          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Color(0xFF8F0B00)),
                        ),
                      )
                    ],
                  ),

                  SizedBox(height: 18),
                  Text("Organizer: $organizer", style: TextStyle(fontSize: 16)),

                  SizedBox(height: 6),
                  Text(description, style: TextStyle(fontSize: 15)),

                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ElevatedButton(

                        onPressed: () {
                          setState(() {
                            acceptedWidgets.add(
                              addinngToaccepted(pendingprojname, "Accepted", organizer, description),
                            );
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: AppTheme.primaryColor,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text("Accept Invitation",style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    //Widget Current Executions



// Widget addinngToaccepted (pname, stus, org, desc){
//       // var pname = keyvalue.pendingprojname;
//       // var stus = keyvalue.staus;
//       // var org = keyvalue.organizer;
//       // var desc = keyvalue.description;
//
//       return acceptedInviteCard(pname, stus, org, desc);
// }

    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      drawer: Drawer(
        backgroundColor: AppTheme.backgroundColor,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(

              height: 290,
              child: DrawerHeader(
                decoration: BoxDecoration(color: AppTheme.primaryColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              blurRadius: 10,
                              spreadRadius: 2,
                              offset: Offset(0, 4),
                            ),
                          ]
                      ),
                      child: CircleAvatar(


                        backgroundColor: Colors.white,
                        radius: 40,


                        child: Text(named[0].toUpperCase(), style: TextStyle(color: AppTheme.primaryColor,fontSize: 40),),
                      ),
                    ),
                    Text(named,style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23, color: Colors.white),),
                    Text(emaild, style: TextStyle(fontSize: 17, fontWeight: FontWeight.normal, color: Colors.white,))
                  ],
                ),
              ),
            ),

            // drawer elements using widgets
            drawerElements("Dashboard", FontAwesomeIcons.palette, Colors.blue, Dashboard(nameD: emaild, emailD: emaild, passwordD: passwordd) ),
            SizedBox(height: 10,),
            drawerElements("Create Execution", FontAwesomeIcons.circlePlus, Colors.green, Dashboard(nameD: emaild, emailD: emaild, passwordD: passwordd) ),
            SizedBox(height: 10,),

            drawerElements("Notifications", FontAwesomeIcons.solidBell, Colors.orangeAccent, Dashboard(nameD: emaild, emailD: emaild, passwordD: passwordd) ),
            SizedBox(height: 10,),

            drawerElements("Past Executions", FontAwesomeIcons.clockRotateLeft, Colors.purple, Dashboard(nameD: emaild, emailD: emaild, passwordD: passwordd) ),
            SizedBox(height: 10,),

            drawerElements("Reports", FontAwesomeIcons.listCheck, Colors.teal, Dashboard(nameD: emaild, emailD: emaild, passwordD: passwordd) ),
            SizedBox(height: 10,),

            drawerElements("Settings", FontAwesomeIcons.gear, Colors.grey, Dashboard(nameD: emaild, emailD: emaild, passwordD: passwordd) ),
            SizedBox(height: 10,),

          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundColor,



        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, size: 30),
            onPressed: () {
              Scaffold.of(context).openDrawer(); // open sidebar
            },
          ),
        ),
        automaticallyImplyLeading: false,


        centerTitle: true,


        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [


            CircleAvatar(
              backgroundColor: AppTheme.primaryColor,
              radius: 20,

              child: Icon(FontAwesomeIcons.solidHandshake, color: Colors.white, size: 18,),
            ),
            SizedBox(width: 10),
            Text("Effortive",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),)
          ],

        ),
        actions: [

          Stack(
            clipBehavior: Clip.none,
            children: [
              IconButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>dashnotify()));
              }, icon: Icon(FontAwesomeIcons.solidBell,size: 30,),),
              Positioned(
                  right: 15,
                  top: -6,
                  child: Container(

                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,


                    ),
                    child: Text("3",style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white,fontSize: 12
                    ),),
                  ))
            ],
          )

        ],
      ),
      body: SingleChildScrollView(
        child: Column(


          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [



                      Text("Pending Invitations",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                      pendingInviteCard("Project AlphaLaunch", "Pending", "Shahul Dhastaghir", "Its a good project everyone needs to work hard. Tools used : HTML, CSS , JS, Fluttter, Dart, RestAPIs, Firebase")

                    ],
                  )

              ),


            ),

            Padding(padding: const EdgeInsets.all(18.0),
              child: Container(
                // key: pending,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Accepted Invitations",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                    // acceptedInviteCard("Team Collaboration Hub", "Accepted","Shobana", "Description of this area"),

                    ...acceptedWidgets

                  ],
                ),
              ),

            ),
            Padding(padding: const EdgeInsets.all(18.0),
              child: Container(
                // key: pending,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text("Current Executions",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),

                    // acceptedInviteCard("Team Collaboration Hub", "Accepted","Shobana", "Description of this area"),

                    currentexe("Month of the Employee", "Active", "Raj", "Recognizing outstanding contributions for the current month. Your feedback matters!"),
                    currentexe("Q3 Project Milestones", "Active", "David", "Evaluate team efforts towards Q3 project goals and achievements.")

                  ],
                ),
              ),

            ),
            Padding(padding: const EdgeInsets.all(18.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Your Perks Overview(Overall)",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold) ),
                    overallPerks()
                  ],
                ),
              ),)

          ],
        ),

      ),

      // bottom app bar
      bottomNavigationBar: BottomAppBar(
        height: 86,
        // shape: CircularNotchedRectangle(),

        color: AppTheme.backgroundColor,
        // notchMargin: 06,
        child: Row(
          spacing: 1,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // padding: const EdgeInsets.only(bottom: 9.0),
            Column(


              mainAxisSize: MainAxisSize.min,
              children: [

                TextButton(onPressed: (){
                  if(currentPage != "dashboard"){
                    setState(() {
                      currentPage =="dashboard";
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard(nameD: "Jascar", emailD: "jascar@neuralnestsolutions.com", passwordD: "Jascar@1")));
                  }
                },


                  child: Column(
                    spacing: 5,
                    children: [
                      Icon(FontAwesomeIcons.palette,color: currentPage == "dashboard" ? AppTheme.primaryColor : Colors.grey, size: 20,) ,
                      Text("Dashboard", style: TextStyle(color: currentPage == "dashboard" ? AppTheme.primaryColor : Colors.grey , fontSize: 15),),

                    ],
                  ),)

              ],
            ),

            Column(


              mainAxisSize: MainAxisSize.min,
              children: [

                TextButton(onPressed: (){
                  if(currentPage != "log_effort"){
                    setState(() {
                      currentPage =="log_effort";
                    });
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard(nameD: "Jascar", emailD: "jascar@neuralnestsolutions.com", passwordD: "Jascar@1")));
                  }
                },


                  child: Column(
                    spacing: 5,
                    children: [
                      Icon(FontAwesomeIcons.pencil,color: currentPage == "log_effort" ? AppTheme.primaryColor : Colors.grey, size: 20,) ,
                      Text("Log Effort", style: TextStyle(color: currentPage == "log_effort" ? AppTheme.primaryColor : Colors.grey , fontSize: 15),),

                    ],
                  ),)

              ],
            ),
            Column(


              mainAxisSize: MainAxisSize.min,
              children: [

                TextButton(onPressed: (){
                  if(currentPage != "notifications"){
                    setState(() {
                      currentPage =="notifications";
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> dashnotify()));

                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> Dashboard(nameD: "Jascar", emailD: "jascar@neuralnestsolutions.com", passwordD: "Jascar@1")));
                  }
                },


                  child: Column(
                    spacing: 5,
                    children: [
                      Icon(FontAwesomeIcons.solidBell,color: currentPage == "notifications" ? AppTheme.primaryColor : Colors.grey, size: 20,) ,
                      Text("Notifications", style: TextStyle(color: currentPage == "notifications" ? AppTheme.primaryColor : Colors.grey , fontSize: 15),),

                    ],
                  ),)

              ],
            ),
            Column(


              mainAxisSize: MainAxisSize.min,
              children: [

                TextButton(onPressed: (){
                  if(currentPage != "history"){
                    setState(() {
                      currentPage =="history";
                    });
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> dashnotify()));
                  }
                },


                  child: Column(
                    spacing: 5,
                    children: [
                      Icon(FontAwesomeIcons.history,color: currentPage == "history" ? AppTheme.primaryColor : Colors.grey, size: 20,) ,
                      Text("History", style: TextStyle(color: currentPage == "history" ? AppTheme.primaryColor : Colors.grey , fontSize: 15),),

                    ],
                  ),)

              ],
            ),


          ],
        ),
      ),
    );

  }
}



