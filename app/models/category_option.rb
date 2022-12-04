class CategoryOption < ActiveHash::Base
  self.data = [
    # Face
    { id: 1, name: '---' },
    { id: 2, name: 'ベース' },
    { id: 3, name: 'フェイスパウダー' },
    { id: 4, name: 'パウダーファンデーション' },
    { id: 5, name: 'リキッドファンデーション' },
    { id: 6, name: 'クッションファンデーション' },
    { id: 7, name: 'クリームファンデーション' },
    { id: 8, name: 'コンシーラー' },
    { id: 9, name: 'ハイライト' },
    { id: 10, name: 'シェーディング' },
    { id: 11, name: 'チーク' },
    { id: 12, name: 'Face_その他' },

    # Eye
    { id: 13, name: 'アイベース' },
    { id: 14, name: 'アイシャドウ' },
    { id: 15, name: 'アイライナー' },
    { id: 16, name: 'アイブロウ' },
    { id: 17, name: 'マスカラ' },
    { id: 18, name: 'Eye_その他' },

    # Lip
    { id: 19, name: 'リップスティック' },
    { id: 20, name: 'リキッドリップ' },
    { id: 21, name: 'リップグロス' },
    { id: 22, name: 'リップティント' },
    { id: 23, name: 'リップペンシル' },
    { id: 24, name: 'Lip_その他' }
  ]

  include ActiveHash::Associations
  has_many :items
end
