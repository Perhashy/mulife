class Part < ActiveHash::Base
  self.data = [
    {id: 1, name: 'ボーカル'},{id: 2, name:'ギター'},
    {id: 3, name: 'ベース'},{id: 4, name: 'ドラム'},
    {id: 5, name: 'キーボード'},{id: 6, name: 'ギター&ボーカル'},
    {id: 7, name: 'ベース&ボーカル'},{id: 8, name: 'パーカッション'},
    {id: 9, name: 'ピアノ'},{id: 10, name: 'バイオリン'},
    {id: 11, name: 'DJ'},{id: 12, name: '作曲'},
    {id: 13, name: 'その他'}
  ]
end