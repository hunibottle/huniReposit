
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class posts extends StatefulWidget {
  // final int boardId;

  @override
  _posts createState() => _posts();
}

class _posts extends State<posts> {
  List<Asset> images = <Asset>[];

  final _valueList = ['자유', '교환', '질문', 'xx'];
  var _selectedValue;


  //권한검사
  void permission() async {
    var status = await Permission.storage.status;
    if (status.isDenied) {
      PermissionStatus s = await Permission.storage.request();
    }
  }

  //사진 불러오기
  getMImage() async {
    List<Asset> resultList = <Asset>[];
    resultList = await MultiImagePicker.pickImages(
      maxImages: 10,
      enableCamera: true,
      selectedAssets: images,
    );

    setState(() {
      images = resultList;
    });
  }

  @override
  void initState() {
    super.initState();
    List<Asset> images = <Asset>[];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 65,vertical: 0),
                child: CircleAvatar(
                  child: Icon(Icons.android),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 0, vertical: 20),
                width: 300,
                height: 50,
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: '제목',
                      labelStyle: TextStyle(fontStyle: FontStyle.italic)
                  ),
                  keyboardType: TextInputType.text,
                ),
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(horizontal: 65, vertical: 20),
                child: DropdownButton(hint: Text('소분류'), value: _selectedValue, items: _valueList.map(
                      (value){
                    return DropdownMenuItem(
                      value: value,
                      child: Text(value),
                    );
                  },
                ).toList(),
                  onChanged: (value){
                    setState(() {
                      _selectedValue = value;
                    });
                  },
                  icon: Icon(Icons.arrow_drop_down_circle),
                  iconEnabledColor: Colors.blue,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: 500,
                height: MediaQuery.of(context).size.height*0.3,
                child: const TextField(
                  expands: true,
                  minLines: null,
                  maxLines: null,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "내용을 입력하세요",
                    labelStyle: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  keyboardType: TextInputType.text,
                ),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(3),
                color: Colors.green,
                child: InkWell(
                  child: Text(
                    '사진',
                    style: TextStyle(color:Colors.black, fontSize: 20),
                  ),
                  onTap: (){
                    permission();
                    getMImage();
                  },
                ),
              ),
              Container(

                width: 100,
                height: 50,
                child: Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: <Widget>[submitButton("", "")],
                    ),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  ElevatedButton submitButton(title, content) {
    return ElevatedButton(
      onPressed: () {
        print(title);
        print(content);
        print('제목과 내용 값을 가져오고, gql 실행하여 데이터 저장한다');
      },
      child: const Text(
        "완료",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _post(String title) =>
      ListView(
        children: [
          _title(title),
        ],
      );

  Widget _textField() =>
      const TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(),
        ),
        keyboardType: TextInputType.text,
      );

  ListTile _title(String title) => ListTile(title: Text(title));
}