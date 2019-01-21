class HomeController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
  end

  def create
    @post = Post.new  #테이블의 한 행을 추가
    @post.name = params[:post_name] 
    #post_title이라는 이름의 내용을 title행에 저장
    @post.letter = params[:post_letter] 
    @post.save #테이블에 써준 내용을 모두 저장 
    
    redirect_to '/home/index'
  end
  
  def delete
    @post = Post.find(params[:post_id])
    @post.destroy
    redirect_to '/home/index'
  end
  
  def edit
    @post = Post.find(params[:post_id]) 
  end
  
  def update
    @post = Post.find(params[:post_id])
    @post.name = params[:post_name]
    @post.letter = params[:post_letter]
    @post.save
    
    redirect_to '/home/index'
  end
end
