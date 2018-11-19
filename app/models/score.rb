class Score < ApplicationRecord
  belongs_to :user
  belongs_to :song



  def score_show
    {
      user:self.user,
      song:self.song,
      score:self.score

    }
  end
end
