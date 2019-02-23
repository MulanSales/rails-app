class PortfoliosController < ApplicationController

  # GET /portfolios
  def index
    @portfolio_items = Portfolio.all 
  end

  # GET /portfolios/new
  def new
    @portfolio_item = Portfolio.new
  end

  # POST /portfolio
  def create
    @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitile, :body))

    respond_to do |format|
      if @portfolio_item.save
        format.html {redirect_to portfolios_path, notice: 'Your portfolio item is now live.'}
      else
        forma.html {render :new}
      end
    end
  end

end
