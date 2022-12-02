class Like < Socialization::ActiveRecordStores::Like
  belongs_to :user, through: :membership
  belongs_to :post

  validates :user_id, uniqueness: { scope: :post_id }
end
