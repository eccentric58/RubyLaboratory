
class PagesController < ApplicationController

  def input
  end
  
  def cached
    result = Rezult.all.map{|var| [in: var.input, out: var.output] }
    p Rezult.all
    respond_to do|format|
      format.json{render xml: result.to_xml}
    end
  end

  def output
    @show_array,@message=Rezult.generate_rez(input_params_str,input_params_count)
  end

  private

  def input_params_str
    input_params_str ||= params[:page][:array]
  end

  def input_params_count
    input_params_count ||= params[:page][:count].to_i
  end
end
