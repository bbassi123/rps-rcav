class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================
  def play_rock
    #decide what to do 
    #render({ :html => "<h1>Hello, world!</h1>".html_safe })
    render({ :template => "game_templates/user_rock.html.erb"})

    #redirect_to("https://www.wikipedia.org")
  end


end
