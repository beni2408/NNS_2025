import 'package:flutter/material.dart';

// stateful widget for readmore options to the pending projects card

class PendingInviteCard extends StatefulWidget {
  final String pendingprojname;
  final String status;
  final String organizer;
  final String description;

  const PendingInviteCard({
    super.key,
    required this.pendingprojname,
    required this.status,
    required this.organizer,
    required this.description,
  });

  @override
  _PendingInviteCardState createState() => _PendingInviteCardState();
}

class _PendingInviteCardState extends State<PendingInviteCard> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 380,
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title and Status Row
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.pendingprojname,
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
                      widget.status,
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF8F0B00),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 18),
              Text("Organizer: ${widget.organizer}", style: TextStyle(fontSize: 16)),

              SizedBox(height: 6),
              Text(
                widget.description,
                style: TextStyle(fontSize: 15),
                maxLines: isExpanded ? null : 2,
                overflow: isExpanded ? TextOverflow.visible : TextOverflow.ellipsis,
              ),

              SizedBox(height: 4),

              InkWell(
                onTap: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Text(
                  isExpanded ? "Read less" : "Read more",
                  style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w600),
                ),
              ),

              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Your action
                    },
                    child: Text("Accept Invitation"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
