= t the Twitter Client

#:subtitle
#   Twitterクライアント t の紹介
:author
   畠山貴
#:institution
#   （株）永和システムマネジメント ソフトドリンク事業部
#:theme
#   rabbit

= tとは？

Rubyで書かれた自作Twitterクライアント

= tの特徴

  * コンソールアプリケーション
  * スマートな引用機能
  * かっこいい取得メッセージ数の指定方法

= コンソールアプリ

コンソール上から閲覧と投稿ができる

= コンソールアプリ

* 閲覧

 $ t

* 投稿

 $ t テステス

= コンソールアプリの利点

  * 思いついた瞬間につぶやける

= 引用機能

(きれいな画像がここに入る）

= 引用機能

  # image
  # src = quote_sample.png

= 引用符つきでつぶやくには

ダブルクォートをバックスラッシュでエスケープする必要あり

  $ t \"会社に帰ってXMLでエンタープライズですよ\"

= qオプション

そこでqオプション

  $ t -q 会社に帰ってXMLでエンタープライズですよ

= qオプション

BEFORE（打鍵数: 27)

  $ t \"会社に帰ってXMLでエンタープライズですよ\"

AFTER（打鍵数: 26）

  $ t -q 会社に帰ってXMLでエンタープライズですよ

= 取得メッセージ数

(きれいな画像がここに入る）

= 取得メッセージ数

デフォルト10件

= nオプション

取得件数を指定できる

  $ t -n 20

= 打鍵数の比較

10件取得(打鍵数: 1)
  $ t

20件取得(打鍵数: 7)
  $ t -n 20

= もっと楽したい

= こうすればいんじゃね？

  $ tt

= 打鍵数の比較

10件取得(打鍵数: 1)
  $ t

20件取得(打鍵数: 2)
  $ tt

= 打鍵数の比較

30件取得(打鍵数: 3)
  $ ttt

60件取得(打鍵数: 6)
  $ tttttt

= GitHub

  # image
  # src = octocat.png

http://github.com/thata/t/

= さよならたまち
 $ t さよならたまち こんにちはおかちまち

= おわり

ご清聴ありがとうございました