import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../common/const.dart';
import '../common/localdata.dart';

class CodePage extends StatefulWidget {
  @override
  _CodePage createState() => _CodePage();
}

class _CodePage extends State<CodePage> {
  LocalData _localData = LocalData.instance;
  Map<int, String> _codeMap = {};

  @override
  void initState() {
    super.initState();

    Future(() async {
      var codeMap = await _localData.getCodeList();
      setState(() {
        _codeMap = codeMap;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Const.TITLE_CODE),
        elevation: 0,
        bottomOpacity: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.separated(
              itemCount: _codeMap.length > 0 ? _codeMap.length + 1 : 0,
              separatorBuilder: (context, index) => Divider(),
              itemBuilder: (context, index) {
                if (index == _codeMap.length) return Container();
                int codeId = _codeMap.keys.elementAt(index);
                String code = _codeMap[codeId];
                return ListTile(
                  title: Text(code),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        onPressed: () async {
                          final data = ClipboardData(text: code);
                          await Clipboard.setData(data);
                          const snackBar = SnackBar(
                            content: Text('已复制到剪贴板'),
                          );
                          ScaffoldMessenger.of(context).showSnackBar(snackBar);
                        },
                        icon: Icon(Icons.copy),
                      ),
                      IconButton(
                        onPressed: () async {
                          await _addCode(codeId, code);
                        },
                        icon: Icon(Icons.edit),
                      ),
                      IconButton(
                        onPressed: () async {
                          await _deleteCode(codeId);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await _addCode(-1, '');
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Future<void> _addCode(int codeId, String code) async {
    TextEditingController inputController = TextEditingController(text: code);
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('输入兑换码'),
        content: Row(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              child: TextField(
                controller: inputController,
                inputFormatters: [
                  LengthLimitingTextInputFormatter(30),
                ],
                decoration: InputDecoration(
                  border: UnderlineInputBorder(),
                  contentPadding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                final data = await Clipboard.getData("text/plain");
                inputController.text = data.text;
              },
              child: Text('粘贴'),
            ),
          ],
        ),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('取消'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);
              if (inputController.text.length <= 0) return;

              await _localData.keepCode(codeId, inputController.text);
              var codeMap = await _localData.getCodeList();
              setState(() {
                _codeMap = codeMap;
              });
            },
            child: Text('确定'),
          ),
        ],
      ),
    );
  }

  Future<void> _deleteCode(int codeId) async {
    await showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Text('将要删除兑换码，是否继续'),
        actions: <Widget>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text('取消'),
          ),
          TextButton(
            onPressed: () async {
              Navigator.pop(context);

              await _localData.deleteCode(codeId);
              var codeMap = await _localData.getCodeList();
              setState(() {
                _codeMap = codeMap;
              });
            },
            child: Text('确定'),
          ),
        ],
      ),
    );
  }
}
