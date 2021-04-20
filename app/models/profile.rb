class Profile < ApplicationRecord
  validates :image, presence: true
  validates :position, presence: true, numericality: { other_than: 1 }
  validates :dexterity, presence: true, numericality: { other_than: 1 }
  validates :team, presence: true
  validates :age, presence: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :position
  belongs_to :dexterity
end
