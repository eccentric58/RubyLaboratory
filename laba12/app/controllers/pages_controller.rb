require './func'
class PagesController < ApplicationController

  def input
  end

  def output
      @show_array = calculate(input_params_count, input_params)
      @show_array.sort!{|a,b|a.length <=> b.length}
                 .delete([])
      @show_array.reverse! 


  end

  def userlist
      res = User.all.map { |inst| { emeil: inst.emeil } }

      respond_to do |format|
        format.xml { render xml: res.to_xml }
        format.json { render json: res }
    end
  end
  private

  def input_params
    @input_params ||= params[:page][:array].split(" ").map(&:to_i)
  end

  def input_params_count
    @input_params_count ||= params[:page][:count].to_i
  end

end
