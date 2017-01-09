defmodule SpyUserInterface do

  def ask_next_move(input_device, board_size, valid_input) do
    send self, :spy_user_interface_received_ask_next_move
    send self, input_device: input_device
    send self, input_size: board_size
    send self, input_valid_moves: valid_input
  end

end
