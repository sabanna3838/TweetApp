# アプリケーション名  「Tweet App」
  
## アプリケーション概要
投稿機能のあるSNSアプリケーションです。  
学習サイトで作成したコードをベースに、機能追加・変更を行いました。  


## 追加・変更内容
・元のコードではサーバーが開かない/アプリが上手く動作しない等の不具合があった為、Gemfile,configを変更  
・ログイン機能の作り直し(app>controllers>session_controller.rb)(app>view>sessions>new.html.erb)  
・フォロー/フォロー解除機能の追加 (app>view>users>show.html.erb)(app>controllers>relationships_controller.rb)  
・フォロワー数、フォロー数の表示 (app>view>users>show.html.erb)  
・ユーザー詳細ページにFollowersとFollowingのリストを追加 (app>view>users>following.html.erb),(app>view>users>followers.html.erb)  
・全フォームをform_tag から form_with へと変更（Signup,Login,Editのページ）(app>view>users>new.html.erb/edit.html.erb),(app>view>posts>new.html.erb/edit.html.erb)  
・HTML/CSSを使用し、サイトの見た目を変更  (日本語->英語、色合い、背景、フォント 等)  

## 使用技術
・Ruby 2.6.8  
・Ruby on Rails 5.2.6  
・Git 2.24.3







