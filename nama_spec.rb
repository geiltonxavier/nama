require 'minitest/autorun'
require './nama.rb'

describe "Nama Multiplos" do
  before do
    @nn = Nama.new
  end

  it "retorna multiplos de 5" do
    @nn.print(5).must_equal "Nama"
  end

  it "retorna multiplos de 7" do
    @nn.print(7).must_equal "Team"
  end

  it "retorna multiplos de 35" do
    @nn.print(70).must_equal "Nama Team"
  end

  it "retorna erro se o numero for negativo" do
    proc {@nn.print(-1)}.must_raise ArgumentError
  end

  it "retorna erro se o numero for zero" do
    proc {@nn.print(0)}.must_raise ArgumentError
  end

  it "retorna erro se o numero não for inteiro" do
    proc {@nn.print(1.5)}.must_raise ArgumentError
  end
end
