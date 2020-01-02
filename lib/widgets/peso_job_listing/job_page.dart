import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:zamboanga_app_ui/models/jobs.dart';
import 'package:zamboanga_app_ui/models/saved_jobs.dart';

// ignore: must_be_immutable
class JobPage extends StatelessWidget {
  int jobIndex;

  JobPage({Key key, @required this.jobIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Jobs jobs = Provider.of<Jobs>(context);
    final SavedJobs savedJobs = Provider.of<SavedJobs>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              savedJobs.jobTitle.contains(jobs.jobTitle[jobIndex])
                  ? Icons.bookmark
                  : Icons.bookmark_border,
              color: savedJobs.jobTitle.contains(jobs.jobTitle[jobIndex])
                  ? Colors.white
                  : null,
            ),
            onPressed: () {
              savedJobs.newJobTitle = jobs.jobTitle[jobIndex];
              savedJobs.newCompanyName = jobs.companyName[jobIndex];
              savedJobs.newCompanyAddress = jobs.companyAddress[jobIndex];
              savedJobs.newCompanyDetails = jobs.companyDetails[jobIndex];
              savedJobs.newCompanyWebsite = jobs.companyWebsite[jobIndex];
              savedJobs.newCompanyEmail = jobs.companyEmail[jobIndex];
              savedJobs.newIndex = jobIndex;
              if (savedJobs.jobTitle.contains(jobs.jobTitle[jobIndex])) {
                savedJobs.remove();
              } else {
                savedJobs.add();
              }
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  jobs.jobTitle[jobIndex].toUpperCase(),
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                Text(jobs.companyName[jobIndex]),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Card(
                      elevation: 1.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: <Widget>[
                            Container(
                                width: MediaQuery.of(context).size.width / 1.18,
                                child: AutoSizeText(
                                  jobs.companyEmail[jobIndex],
                                  style: TextStyle(fontSize: 15),
                                )),
                            Divider(),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.18,
                              child: AutoSizeText(
                                jobs.companyWebsite[jobIndex],
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            Divider(),
                            Container(
                              width: MediaQuery.of(context).size.width / 1.18,
                              child: AutoSizeText(jobs.companyDetails[jobIndex],
                                  style: TextStyle(fontSize: 15)),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
