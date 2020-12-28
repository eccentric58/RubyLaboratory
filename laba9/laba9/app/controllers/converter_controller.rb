class ConverterController < ApplicationController
  def input
    render layout: false
  end

  def view
    if is_num?(params[:val])
      @num = params[:val].to_i
      @res = @num.to_s(2).reverse.to_i(2)
      @flag = true
    else 
      @flag = false
      @res = 'Error'
    end

    respond_to do |format|
      format.html 
      format.json do
        render json:
          {type: @res.class.to_s, value: @res}
          # {type: @flag.class.to_s, value: @flag}
      end
    end
  end

  private
  def is_num? val
    val.to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/)
  end
end
