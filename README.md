# fakedump.sh
## これは何？
あたかも何らかの処理が実行中であるかのように、任意のテキストファイルを端末上に流し続けるスクリプトです。

## 使い方
```
$ chmod +x fakedump.sh
$ ./fakedump.sh sampledir
```
引数には、出力するテキストファイルの入ったディレクトリを指定します。
付属の sampledir ディレクトリには、適当なテキストファイルが入っています。その中のファイルをランダムに選択し、頭から順にゆっくりと出力します。

停止するには Ctrl-C を押してください。