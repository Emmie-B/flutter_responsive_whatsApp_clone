import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:prv_tute/provider/dataProvider.dart';
import 'package:prv_tute/provider/userProvider.dart';
import 'package:prv_tute/userModel.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // final userProvider = Provider.of<UserProvider>(context, listen: false);
    // read the data provider
    final dataProvider = Provider.of<DataClass>(context, listen: false);

    dataProvider.users == null ? dataProvider.getUser() : null;
  }

  @override
  Widget build(BuildContext context) {
    final userDataProvider = Provider.of<DataClass>(context);
    final List<User>? users = userDataProvider.users;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("New Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              context.watch<UserProvider>().userName,
              style: Theme.of(context).textTheme.headline4,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: users!.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          users[index].name!,
                        ),
                        subtitle: Text(
                          users[index].email!,
                        ),
                      );
                    })),
            ElevatedButton(
              onPressed: () {
                context.read<UserProvider>().changUserName("Emmanuel");
              },
              child: const Text("Change Name"),
            ),
          ],
        ),
      ),
    );
  }
}
