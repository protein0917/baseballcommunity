class Dexterity < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '右投げ右打ち' },
    { id: 3, name: '右投げ左打ち' },
    { id: 4, name: '右投げ両打ち' },
    { id: 5, name: '左投げ右打ち' },
    { id: 6, name: '左投げ左打ち' },
    { id: 7, name: '左投げ両打ち' },
    { id: 8, name: '両投げ右打ち' },
    { id: 9, name: '両投げ左打ち' },
    { id: 10, name: '両投げ両打ち' },
  ]

  include ActiveHash::Associations
  has_many :profiles

  end