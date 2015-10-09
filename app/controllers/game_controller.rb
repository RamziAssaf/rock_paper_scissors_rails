class GameController < ApplicationController
  def rps
    @user_move = params[:the_move]

    # ===============================================================
    # Your code goes below.
    # The move the user chose is in the variable @user_move.
    # ===============================================================


    @user_move.downcase
    if (@user_move=='rock') || (@user_move=='paper') || (@user_move=='scissors')
        allmoves = ["Rock", "Paper", "Scissors"]
        @computer_move = allmoves[rand(3)]
        puts "The computer move is: #{@computer_move}"
        if @user_move==@computer_move.downcase
            @result = 'It\'s a tie!'
        elsif @user_move=='rock' && @computer_move=='Paper'
            @result = 'You lose!'
        elsif @user_move=='rock' && @computer_move=='Scissors'
            @result = 'You win!'
        elsif @user_move=='paper' && @computer_move=='Rock'
            @result = 'You win!'
        elsif @user_move=='paper' && @computer_move=='Scissors'
            @result = 'You lose!'
        elsif @user_move=='scissors' && @computer_move=='Rock'
            @result = 'You lose!'
        elsif @user_move=='scissors' && @computer_move=='Paper'
            @result = 'You win!'
        end
    else
        @result = 'That doesn\'t seem to be a valid move.'
    end



    # ===============================================================
    # Your code goes above.
    # ===============================================================

    render("rps.html.erb")
  end
end
