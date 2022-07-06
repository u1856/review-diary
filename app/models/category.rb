class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: 'アクション' },
    { id: 3, name: 'SF' },
    { id: 4, name: 'アドベンチャー' },
    { id: 5, name: 'コメディ' },
    { id: 6, name: 'ファンタジー' },
    { id: 7, name: '恋愛' },
    { id: 8, name: 'ホラー' },
    { id: 9, name: '音楽・ミュージカル' },
    { id: 10, name: 'ミステリー' },
    { id: 11, name: 'アニメ' },
    { id: 12, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :movies
end