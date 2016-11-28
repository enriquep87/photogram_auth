class Like < ActiveRecord::Base
    validates(:user_id, :presence=>true)
    validates(:user_id, uniqueness: {scope: :photo, message: "Error, try again"})
    validates(:photo_id, :presence=>true)
    belongs_to :user, :class_name => "User", :foreign_key => "user_id"
    belongs_to :photo
end
