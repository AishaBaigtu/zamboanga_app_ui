import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamboanga_app_ui/models/saved_jobs.dart';

import 'job_page.dart';

class SavedJobsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double spacing = 10.0;
    final SavedJobs savedJobs = Provider.of<SavedJobs>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Job Openings"),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SafeArea(
          child: ListView.builder(
            shrinkWrap: true,
            physics: ScrollPhysics(),
            itemCount: savedJobs.companyName.length,
            itemBuilder: (BuildContext context, index) {
              return Padding(
                padding: EdgeInsets.only(
                  bottom: spacing,
                ),
                child: RaisedButton(
                  shape: new RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                      side: BorderSide(color: Colors.purple)),
                  color: Colors.white,
                  textColor: Colors.purple,
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            savedJobs.jobTitle[index].toUpperCase(),
                            style: TextStyle(fontSize: 20.0),
                          ),
                          subtitle: Column(
                            children: <Widget>[
                              Divider(
                                height: 5.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Icon(
                                    Icons.work,
                                    size: 12.0,
                                  ),
                                  Text(" "),
                                  Text(
                                    savedJobs.companyName[index],
                                    style: TextStyle(fontSize: 15.0),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (BuildContext context) =>
                            JobPage(jobIndex: savedJobs.index[index]),
                      ),
                    );
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
