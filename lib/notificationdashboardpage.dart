import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import './AppTheme.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './Dashboard.dart';

class dashnotify extends StatefulWidget {
  const dashnotify({super.key});

  @override
  State<dashnotify> createState() => _dashnotifyState();
}

class _dashnotifyState extends State<dashnotify> {
  @override
  Widget build(BuildContext context) {
    String currentPage = "notifications";

    //Widget for  new CDME Notification
    Widget newCDMEnotificationcard( String projtitle, String buttontext, String when) {
      return SizedBox(
        height: 160,
        width: double.infinity,
        child: Card(
          color: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Padding(

                  padding: const EdgeInsets.only(left:8.0, top: 10),
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      CircleAvatar(
                        backgroundColor: Colors.deepOrange,
                        radius: 12,
                        child: Icon(FontAwesomeIcons.exclamation,size: 15,color: Colors.white,),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            children: [
                              TextSpan(
                                text: "New CDME: ",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                              ),
                              TextSpan(text: projtitle,style: TextStyle(fontSize: 18)),
                              TextSpan(text: " needs your weightage ",style: TextStyle(fontSize: 18)),
                              TextSpan(
                                text: buttontext,
                                style: TextStyle(
                                  color: AppTheme.primaryColor,
                                  fontWeight: FontWeight.bold, fontSize: 18,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {

                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Text(when,style: TextStyle(color: AppTheme.disabledTextColor),),
                    )
                  ],
                )
              ],
            ),

          ),

        ),
      );
    }


    // widget for weightage update notification cord

    Widget weightagenotificationcard( String projtitle, String buttontext, String when) {
      return SizedBox(
        height: 160,
        width: double.infinity,
        child: Card(
          color: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Padding(

                  padding: const EdgeInsets.only(left:8.0, top: 10),
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      CircleAvatar(
                        backgroundColor: Colors.green,
                        radius: 12,
                        child: Icon(FontAwesomeIcons.check,size: 15,color: Colors.white,),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            children: [


                              TextSpan(
                                text: "Weightage Updated: ",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                              ),
                              TextSpan(
                                text: "Your weightage for ",
                                style: TextStyle(fontSize: 18),
                              ),
                              TextSpan(text: projtitle,style: TextStyle(fontSize: 18)),
                              TextSpan(text: " has been updated ",style: TextStyle(fontSize: 18)),
                              TextSpan(
                                text: buttontext,
                                style: TextStyle(
                                  color: AppTheme.primaryColor,
                                  fontWeight: FontWeight.bold, fontSize: 18,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {

                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Text(when,style: TextStyle(color: AppTheme.disabledTextColor),),
                    )
                  ],
                )
              ],
            ),

          ),

        ),
      );
    }

    // widget for Appeal request notification cord

    Widget appealreqnotificationcard( String projtitle, String buttontext, String when) {
      return SizedBox(
        height: 160,
        width: double.infinity,
        child: Card(
          color: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Padding(

                  padding: const EdgeInsets.only(left:8.0, top: 10),
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(FontAwesomeIcons.solidCommentDots,size: 23,color: Colors.blueAccent,),

                      // CircleAvatar(
                      //   backgroundColor: AppTheme.primaryColor,
                      //   radius: 12,
                      //   child: Icon(FontAwesomeIcons.solidCommentDots,size: 15,color: AppTheme.primaryColor,),
                      // ),
                      SizedBox(width: 12),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            children: [


                              TextSpan(
                                text: "Appeal recieved : ",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                              ),
                              TextSpan(
                                text: "SOC has appealed your comment on",
                                style: TextStyle(fontSize: 18),
                              ),
                              TextSpan(text: projtitle,style: TextStyle(fontSize: 18)),
                              // TextSpan(text: " has been updated ",style: TextStyle(fontSize: 18)),
                              TextSpan(
                                text: buttontext,
                                style: TextStyle(
                                  color: AppTheme.primaryColor,
                                  fontWeight: FontWeight.bold, fontSize: 18,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {

                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Text(when,style: TextStyle(color: AppTheme.disabledTextColor),),
                    )
                  ],
                )
              ],
            ),

          ),

        ),
      );
    }

    //Widget for New Execution Notification
    Widget newExecutionnotificationcard( String projtitle, String buttontext, String when, String creatername) {
      return SizedBox(
        height: 160,
        width: double.infinity,
        child: Card(
          color: Colors.white,
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          margin: EdgeInsets.all(12),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Padding(

                  padding: const EdgeInsets.only(left:8.0, top: 10),
                  child: Row(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      CircleAvatar(
                        backgroundColor: Colors.blueAccent,
                        radius: 12,
                        child: Icon(FontAwesomeIcons.add,size: 14,color: Colors.white,),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(color: Colors.black, fontSize: 18),
                            children: [
                              TextSpan(
                                text: "New Execution: ",
                                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
                              ),
                              TextSpan(text: projtitle,style: TextStyle(fontSize: 18)),
                              TextSpan(text: " has been created by ${creatername} ",style: TextStyle(fontSize: 18)),
                              TextSpan(
                                text: buttontext,
                                style: TextStyle(
                                  color: AppTheme.primaryColor,
                                  fontWeight: FontWeight.bold, fontSize: 18,
                                ),
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {

                                  },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 45.0),
                      child: Text(when,style: TextStyle(color: AppTheme.disabledTextColor),),
                    )
                  ],
                )
              ],
            ),

          ),

        ),
      );
    }
    return  Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppTheme.backgroundColor,
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.arrow_back, size: 30),
            onPressed: () {
              Navigator.pop(context); // open sidebar
            },
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,

        title: Text("Notifications", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
      ),
      body:
      SingleChildScrollView(
        child: Column(

          children: [
            // newCDMEnotificationcard(noticon, projtitle, notetype, buttontext, when)

            newCDMEnotificationcard( "Project Alpha Feature Completion", "View and Add weightage", "5 minutes ago"),
            weightagenotificationcard("Client meetiing Prep", "View Details", "1hr ago"),
            appealreqnotificationcard("Sprint Planning Lead ", "Review Appeal", "Yesterday"),
            newExecutionnotificationcard("Year of the Employee", "View Execution", "2 days ago", "David")
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
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=> dashnotify()));
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
