class ApplicationController < ActionController::Base
  layout("wrapper.html.erb")
  #layout(false)
  # Add your actions below this line
  # ================================

  # render({ :template => "game_templates/user_rock.html.erb"})

  def play_rock
    @computer_move = ["rock", "paper", "scissors"].sample
    
    if @computer_move == "rock"
      @outcome = "tied"
    elsif @computer_move == "paper"
      @outcome = "lost"
    elsif @computer_move == "scissors"
      @outcome = "won"
    end

    render({ :template => "game_templates/user_paper.html.erb"})
  end

  def play_paper
    @computer_move = ["rock", "paper", "scissors"].sample
    
    if @computer_move == "rock"
      @outcome = "won"
    elsif @computer_move == "paper"
      @outcome = "tied"
    elsif @computer_move == "scissors"
      @outcome = "lost"
    end

    render({ :template => "game_templates/user_paper.html.erb"})
  end

  def play_scissors
    @computer_move = ["rock", "paper", "scissors"].sample
    
    if @computer_move == "rock"
      @outcome = "lost"
    elsif @computer_move == "paper"
      @outcome = "won"
    elsif @computer_move == "scissors"
      @outcome = "tied"
    end

    render({ :template => "game_templates/user_paper.html.erb"})
  end


  def homepage
    render({ :template => "game_templates/rules.html.erb"})
  end
end
