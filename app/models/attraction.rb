class Attraction < ActiveHash::Base
  self.data = [
    { id: 0, name: '--' },
    { id: 1, name: '自然' },
    { id: 2, name: '歴史' },
    { id: 3, name: 'グルメ' },
    { id: 4, name: 'スポーツ' },
    { id: 5, name: 'アミューズメント' },
    { id: 6, name: '買い物' },
    { id: 7, name: 'お祭り' },
    { id: 8, name: '芸術' },
    { id: 9, name: '建築物' },
    { id: 10, name: 'その他' }
  ]

  include ActiveHash::Associations
  has_many :trips
end
