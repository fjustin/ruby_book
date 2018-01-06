# モジュールの定義はincludeするときと同じ

module Loggable
  def log(text)
    puts "[LOG] #{text}"
  end
end


class Product
  # Loggableモジュールのメソッドを特異メソッド(クラスメソッド)としてミックスインする
  extend Loggable


  def self.create_product(names)
    #logメソッドをクラスメソッド内で呼び出す
    log 'create_product is called'
  end
end


#クラスメソッド経由でlogメソッドが呼び出される
Product.create_product([])


# Productクラスのクラスメソッドとして直接呼び出すことも可能
Product.log('Hello!')

=begin
# ログ出力用のメソッドを提供するモジュール
 module Loggable
   def log(text)
     puts "[LOG] #{text}"
   end
 end


class Product
  #上で作ったmoduleをincludeする
  include Loggable

  def title
    # logメソッドはLoggableモジュールで定義したメソッド
    log 'title is called'
    'A great movie'
  end
end

class User
  # こちらも同じようにincludeする
  include Loggable



  def name
    # Loggableモジュールのメソッドが使える
    log 'name is called'
    'Alice'
  end
end


product = Product.new
puts product.title


user = User.new
puts user.name






class Product
  def title
    log 'title is called.'
    'A great movie'
  end

  private

  def log(text)
    # 本来であれば標準ライブラリのLoggerクラスをなどを使うべき
    puts "[LOG] #{text}"
  end
end

class User
  def name
    log 'name is called'
    'Alice'
  end

  private

  # このメソッドの実装はProductクラスのlogメソッドと全く同じ
  def log(text)
    puts "[LOG] #{text}"
  end
end


product = Product.new
puts product.title



user = User.new
puts user.name

=end
