class Player < ActiveRecord::Base
  attr_accessible :nickname, :race_id
  belongs_to :race
  belongs_to :user
  
  
  validates :nickname, :presence => true
  
  def change_gold!(value)
    if there_is_a_buy_of_gold_from_the_user_for?(value)
      self.gold += value
    end
    save
  end
  
  private
  
  def there_is_a_buy_of_gold_from_the_user_for?(value)
    true
  end
end
