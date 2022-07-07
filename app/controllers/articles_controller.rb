class ArticlesController < ApplicationController

  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]
  
  def index
    @articles = Article.all
  end

  def show  
    @article = Article.find(params[:id])
    puts 'in show'
  end

  def new 
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if params[:auto_body] == '1'
      @article.body = get_auto_generated_body(5,4)  
    end
    
    if @article.save  
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    
    if @article.update(article_params)
      redirect_to @article
    else 
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @article = Article.find(params[:id])
    puts ' IN DESTROY '
    @article.destroy

    redirect_to root_path, status: :see_other
  end

  private
    def article_params
      params.require(:article).permit(:title, :body, :status)
    end

    def get_auto_generated_body(paragraphs,phrases)
      ipservice = LoremIpsumService.new
      apiResponse = ipservice.gerador(paragraphs,phrases)
      body = String.new
      apiResponse.text.each do |paragraph|
        body += paragraph
      end
      body
    end
end
