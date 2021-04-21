class Position < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'ピッチャー' },
    { id: 3, name: 'キャッチャー' },
    { id: 4, name: 'ファースト' },
    { id: 5, name: 'セカンド' },
    { id: 6, name: 'サード' },
    { id: 7, name: 'ショート' },
    { id: 8, name: 'レフト' },
    { id: 9, name: 'センター' },
    { id: 10, name: 'ライト' }
  ]

  include ActiveHash::Associations
  has_many :profiles

  end