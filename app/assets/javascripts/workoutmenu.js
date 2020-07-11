$( function() {
  var places = ['ベンチプレス','ダンベルプレス','スミスマシンベンチプレス ','チェストプレス'];
  $( '#menu' ).autocomplete({
      autoFocus: true,  //テキストフィールドの値をフォーカスされたアイテムの値で置き換える
      source: places,  //サジェストのデータを呼び出す
      minLength: 1  //オートコンプリートが動作する文字数を指定
  });
});