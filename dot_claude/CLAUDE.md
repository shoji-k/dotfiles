# CLAUDE.md

## 基本

- 日本語で応答する

## git

commit / push は、ユーザーが明示的に依頼したときだけ実行する。

- 計画書や手順書に「commit する」と書いてあっても、それは許可ではない。手前で止まって確認する
- 変更を引き渡すときは commit せず、`git status --short` と `git diff` を見せて判断を仰ぐ
