class CoachingController < ApplicationController
  def answer
    @your_message = params[:query]
    @coachanswer = coach_answer(@your_message)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    if your_message == "Hello Coach !"
      return "Hello Junior"
    elsif your_message.include?("?")
      return "Silly question, get dressed and go to work!"
    elsif your_message == "I am going to work right now!"
      return ""
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    if your_message == "Hello Coach !"
      return "Hello Junior"
    elsif your_message.include?("?")
      return "I can feel your motivation! #{coach_answer(your_message)}"
    elsif your_message.downcase == "i am going to work right now!"
      return ""
    else
      return "I can feel your motivation! #{coach_answer(your_message)}"
    end
  end


end
