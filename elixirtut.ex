defmodule M do
  def main do
  #   name = IO.gets("What is your name? ")
  #   |> String.trim
  #   IO.puts "Hello #{name}"

    # data_stuff()
    # do_stuff()
    # do_math()
    # compare_stuff()
    # logical_operators()
    decision_making()
  end

  def data_stuff do
    my_int = 123
    my_float = 66.666778
    one_to_10 = 1..10
    IO.puts "Integer #{is_integer(my_int)}"
    IO.puts "Float #{is_float(my_float)}"
    IO.puts "Atom #{is_atom(:Pittsburgh)}"
  end

  def do_stuff do
    my_str = "My Sentence"
    IO.puts "Length : #{String.length(my_str)}"
    long_str = my_str <> " " <> "is longer"
    IO.puts long_str
    IO.puts "Equal : #{"Egg" === "egg"}"
    IO.puts "My ? #{String.contains?(my_str, "My")}"
    IO.puts "First : #{String.first(my_str)}"
    IO.puts "Index 4 : #{String.at(my_str, 4)}"
    IO.puts "Substring : #{String.slice(my_str, 3, 8)}"
    IO.inspect String.split(long_str, " ")
    IO.puts String.reverse(long_str)
    IO.puts String.upcase(long_str)
    IO.puts String.downcase(long_str)
    IO.puts String.capitalize(long_str)

    4 * 10 |> IO.puts
  end

  def do_math do
    IO.puts "5+4 = #{5+4}"
    IO.puts "5-4 = #{5-4}"
    IO.puts "5*4 = #{5*4}"
    IO.puts "5/4 = #{5/4}"
    IO.puts "5 div 4 = #{div(5,4)}"
    IO.puts "5 rem 4 = #{rem(5,4)}"
  end

  def compare_stuff do
    IO.puts "4 == 4.0 : #{4 == 4.0}"
    IO.puts "4 === 4.0 : #{4 === 4.0}"
    IO.puts "4 != 4.0 : #{4 != 4.0}"
    IO.puts "4 !== 4.0 : #{4 !== 4.0}"

    IO.puts "5 > 4 : #{5 > 4}"
    IO.puts "5 >= 4 : #{5 >= 4}"
    IO.puts "5 < 4 : #{5 < 4}"
    IO.puts "5 <= 4 : #{5 <= 4}"
  end

  def logical_operators do
    age = 16

    IO.puts "Vote & Drive : #{(age >= 16) and (age >= 18)}"
    IO.puts "Vote or Drive : #{(age >= 16) or (age >= 18)}"

    IO.puts not true
  end

  def decision_making do
    age = 16

    if age >= 18 do
      IO.puts "Can Vote"
    else
      IO.puts "Can't Vote"
    end

    unless age === 18 do
      IO.puts "Your are not 18"
    else
      IO.puts "You are 18"
    end

    cond do
      age >= 18 -> IO.puts "You can vote"
      age >= 16 -> IO.puts "You can drive"
      age >= 14 -> IO.puts "You can wait"
      true -> IO.puts "Default"
    end
  end
end
