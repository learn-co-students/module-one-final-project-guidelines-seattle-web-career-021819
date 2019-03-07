class User < ActiveRecord::Base
  has_many :games

  @@current_user = ""

  def self.create_user(user_name)
    @@current_user = self.find_or_create_by(name: user_name.downcase, total_points: nil, win_lose_record: nil)
  end

  def self.current_user
    @@current_user
  end

  def self.game_points

  end

end
