assignされたやつ
<div>
  {{$stringVar}}
</div>

変数を定義しても、assignされたものたちとは別扱い
{{php}}$foo = 'FOO'{{/php}}
<div>
  {{$foo}}
</div>

自身はSmartyなので、assign() メソッドが使える
{{php}}$this->assign('bar', 'BAR'){{/php}}
{{php}}$this->assign('piyo', ['k1'=>'K', 'k2'=>'KK']){{/php}}
<div>
  <p>{{$bar}}</p>
  <p>{{$piyo.k2}}</p>
</div>


これを使えば、テンプレート側だけでもある程度デバッグができる。
{{php}}$this->assign('user', ['name'=>'鈴木', 'gender'=>'m']){{/php}}
<div>
  {{if $user.gender === 'm'}}
    こんにちは {{$user.name}} くん
  {{else}}
    こんにちは {{$user.name}} ちゃん
  {{/if}}
</div>


そもそもプロパティにassign済み変数を持っているので、直接書き換えられる。
{{php}}$this->_tpl_vars['user']['name'] = '田中'{{/php}}
<div>
  こんにちは {{$user.name}} 殿
</div>

あくまでデバッグ目的。
プロダクトコードでこんなことしてはいけない。




<style>
  div {
    margin-bottom: 20px;
    background-color: #cccccc;
    min-height: 10px;
  }
</style>
