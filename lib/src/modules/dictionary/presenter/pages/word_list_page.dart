import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class WordListPage extends StatefulWidget {
  const WordListPage({Key? key}) : super(key: key);

  @override
  State<WordListPage> createState() => _WordListPageState();
}

class _WordListPageState extends State<WordListPage> {
  bool _loading = true;
  List<String> _wordsList = [];

  @override
  void initState() {
    _getData();
    super.initState();
  }

  void _getData() async {
    final String response =
        await rootBundle.loadString('assets/json/words_dictionary.json');
    final data = await json.decode(response);
    _wordsList = data.keys.toList();
    setState(() => _loading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: _loading
              ? const CircularProgressIndicator(color: Colors.blue)
              : Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GridView.builder(
                        itemCount: _wordsList.length,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                        ),
                        itemBuilder: (_, index) {
                          return Text("|${_wordsList[index]}|");
                        },
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
