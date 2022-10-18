# Clang++

```bash
g++ main.cpp
```

## ストリームの概念

ファイルへの読み書きと、コンソールからの入力・出力の処理がほとんど同じような記述で行うことが出来る

https://mermaid-js.github.io/mermaid/#/

```
cout -> stream <-> file
cin  <- stream <-> console
```

|identification|meaning|
|---|---|
|public|すべての範囲から呼び出し・読み出し可能|
|private|同一クラスまたは同一インスタンス内でのみアクセス可能|
|protected|同一クラスまたは同一インスタンスおよび、サブクラスおよびそのインスタンス内でのみアクセス可能|


