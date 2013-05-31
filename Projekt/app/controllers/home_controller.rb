class HomeController < ApplicationController
  def index
  @age=8
  @table={"headings" => ["liczba", "liczba", "suma"],
        "body" => [[1, 1, 2], [1, 2, 3] , [ 1, 3, 4]]
  }
  end
end
