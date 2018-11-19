class ScoreSerializer < ActiveModel::Serializer
  attributes :score , :user


  def user
    {
      user: object.user.username
    }
  end
end
