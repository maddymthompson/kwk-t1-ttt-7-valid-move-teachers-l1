# code your #valid_move? method here
def valid_move?(board, index)
  #is index valid?
#if index.between?(0,8)
#  if position_taken?(board, index)
  #  false
#  else
#    true
#  end

index.between?(0,8) && !position_taken?(board, index)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board, index)
  board[index] != " "
end

    expect(valid_move?(board, index)).to be_falsey
  end

  it 'returns nil or false for a position that is not on the board' do
    board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
    index = 100

    expect(valid_move?(board, index)).to be_falsey
  end
end
