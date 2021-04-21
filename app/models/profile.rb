class Profile < ApplicationRecord
  validates :image, presence: true
  validates :position_id, presence: true, numericality: { other_than: 1 }
  validates :dexterity_id, presence: true, numericality: { other_than: 1 }
  validates :team, presence: true
  validates :age, presence: true, format: { with: /\A[0-9]+\z/ }, numericality: { only_integer: true, greater_than_or_equal_to: 18, less_than_or_equal_to: 50 }

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :position
  belongs_to :dexterity
  belongs_to :user
end
