# Occhan
若者がおっちゃんにアドバイスをさせてあげるサービス。  
おっちゃんは、若者の相談を選び、申請。おっちゃんにアドバイス許可を与える代わりに、若者はリターンをもらう。  
https://hidden-depths-77466.herokuapp.com
若者 = 相談作成者  
おっちゃん = アドバイス申請者

## Description
昨今、少子高齢化により若者の数が減り、おっちゃんは増え続ける一方だ。
しかし、「おっちゃんが若者にアドバイスをしたい」という欲求は、いつの世も変わることがない。

だがひとつ問題が発生した...若者は、おっちゃんの話を聞かないのだ！
そこで、このサービスでは、若者はおっちゃんのアドバイスを聞いてあげる代わりにリターンをもらえるというWin-Winの関係性を実現した。

このサービスが全てのおっちゃんと若者のギャップを小さくし、
ひいては社会が良くなることを願っている・・・。

## Demo
![若者操作demo](https://user-images.githubusercontent.com/14966140/47023364-86b55680-d19a-11e8-8777-b5b9fe118207.gif)
![おっちゃん操作demo](https://user-images.githubusercontent.com/14966140/47023464-b2384100-d19a-11e8-931e-54e0edec040c.gif)

## Requirement
* ruby 2.5.1
* ruby on rails 5.2.1
* postgresql 10.4
* bootstrap 4.1

### gem
* device ログイン機能
* carrierwave 画像処理
* mini_magick 画像処理
* font-awesome-Rails アイコンの表示
* bootstrap_form フォームを一瞬で綺麗に
* kaminari ページネーション用
* letter_opener_web 開発環境でのメール確認

## Function 機能一覧
1. 相談の作成・保存
おっちゃんと若者をマッチングする相談とリソースを作成する
2. 相談の一覧
おっちゃんがアドバイスしたい相談とリソースを選ぶ
3. 相談の編集・削除
相談内容を変えたりできる
4. ログイン機能
ユーザログインによる機能制限(ログインしないと相談作成や申請ができない
5. マイページ機能
自情報の管理・編集
6. アドバイス申請機能
おっちゃんと若者をマッチングさせる機能(申請機能) 申請があったらメールで通知
7. 相談の詳細
課題の詳細をみる
8. 申請のメール告知機能
申請があったら相談作成者にメールがいく
9. メッセージやり取り機能
会うもしくはテレビ電話までのやり取りをメッセージできる
10. ページネーション
若者の相談一覧ページのページネーション
11. レビューコメント機能
若者、おっちゃんのページにレビューをコメントできる

## DB&カタログ設計
[カタログ設計&テーブル定義](https://docs.google.com/spreadsheets/d/1ZaUdRmGfjTv4Jqu5hJUQclhnZgqP7ii9hSIUwahTZJA/edit#gid=1415471225)

## ER
![ER図](https://user-images.githubusercontent.com/14966140/47021584-b06c7e80-d196-11e8-9460-9908ecc31545.png)
)

## 参考サイト
[Matcher](https://matcher.jp/)

[TIME TICKET](https://www.timeticket.jp/)

## Author
[shun](https://github.com/shun57)

## Licence
(C) Copyright 2018 Shunsuke Sakurai

All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
Neither the name of the nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
