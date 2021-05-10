require 'ruby2d'

set background: 'navy'
set fps_cap: 20

SNAKE_SIZE = 6
SNAKE_DIRECTIONS = ['down','up','left','right']
BALL_COUNT = 3
INITIAL_SPEED = 10
SQUARE_SIZE = 20
GRID_WIDTH = Window.width / SQUARE_SIZE
GRID_HEIGHT = Window.height / SQUARE_SIZE

class Snake
  attr_writer :direction

  def initialize
    @direction = SNAKE_DIRECTIONS[rand(0..SNAKE_DIRECTIONS.length - 1)]

    if @direction == 'left' || @direction == 'right'
      y = rand(1..10)
      ys = [y]
      x = rand(1..10)
      xs = [*x..x+SNAKE_SIZE - 1]
      @positions = xs.product ys
      p @positions
    else
      x = rand(1..10)
      xs = [x]
      y = rand(1..10)
      ys = [*y..y+SNAKE_SIZE - 1]
      @positions = xs.product ys
      p @positions
    end
    @growing = false
  end

  def draw
    @positions.each_with_index do |position,index| 
      color = 'white'
      if index == @positions.length - 1
        color = 'blue'
      end
      Square.new(x: position[0] * SQUARE_SIZE, y: position[1] * SQUARE_SIZE, size: SQUARE_SIZE, color: color)
    end
  end

  def grow
    @growing = true
  end

  def move
    if !@growing
      @positions.shift
    end

    @positions.push(next_position)
    @growing = false
  end

  def can_change_direction_to?(new_direction)
    case @direction
    when 'up' then new_direction != 'down'
    when 'down' then new_direction != 'up'
    when 'left' then new_direction != 'right'
    when 'right' then new_direction != 'left'
    end
  end

  def x
    head[0]
  end

  def y
    head[1]
  end

  def next_position
    if @direction == 'down'
      new_coords(head[0], head[1] + 1)
    elsif @direction == 'up'
      new_coords(head[0], head[1] - 1)
    elsif @direction == 'left'
      new_coords(head[0] - 1, head[1])
    elsif @direction == 'right'
      new_coords(head[0] + 1, head[1])
    end
  end

  def hit_itself?
    @positions.uniq.length != @positions.length
  end

  private

  def new_coords(x, y)
    [x % GRID_WIDTH, y % GRID_HEIGHT]
  end

  def head
    @positions.last 
  end
end

class Game
  def initialize 
    @balls = []
    for idx in 1..BALL_COUNT do 
      @balls.push [rand(1..25), rand(1..25)]
    end
    @score = 0
    @finished = false
  end

  def draw
    for ball in @balls do 
        Square.new(x: ball[0] * SQUARE_SIZE, y: ball[1] * SQUARE_SIZE, size: SQUARE_SIZE, color: 'yellow')
    end 
    Text.new(text_message, color: 'green', x: 10, y: 10, size: 25, z: 1)
  end

  def snake_hit_ball?(x, y)
    @balls.each_with_index do |ball, index|
        if ball[0] == x && ball[1] == y
            return index
        end 
    end
    return -1
  end

  def record_hit idx
    @score += 1

    @balls[idx][0] = rand(Window.width / SQUARE_SIZE)
    @balls[idx][1] = rand(Window.height / SQUARE_SIZE)
  end

  def finish
    @finished = true
  end

  def finished?
    @finished
  end

  private

  def text_message
    if finished?
      "Game over, Your Score was #{@score}. Press 'R' to restart. "
    else
      "Score: #{@score}"
    end
  end
end

snake = Snake.new
game = Game.new

update do
  clear

  unless game.finished?
    snake.move
  end

  snake.draw
  game.draw

  idx = game.snake_hit_ball?(snake.x, snake.y) 
  if idx >= 0
    game.record_hit idx
    snake.grow
  end

  if snake.hit_itself?
    game.finish
  end
end

on :key_down do |event|
  if ['up', 'down', 'left', 'right'].include?(event.key)
    if snake.can_change_direction_to?(event.key)
      snake.direction = event.key
    end
  end

  if game.finished? && event.key == 'r'
    snake = Snake.new
    game = Game.new
  end
end

show