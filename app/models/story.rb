class Story < ActiveRecord::Base
  validates :title, :image, :author, :presence => true

  has_many :sentences


  def image_dice
    image_array = ['dice-img/apple.png', 'dice-img/car-key.png', 'dice-img/car.png', 'dice-img/coffee.png', 'dice-img/corndog.png', 'dice-img/dog-bowl.png', 'dice-img/hiker.png', 'dice-img/house.png', 'dice-img/monster.png', 'dice-img/pumpkin.png', 'dice-img/robot.png', 'dice-img/taco.png']
    random_num = rand(9)
    self.image = image_array[random_num]
  end
end
