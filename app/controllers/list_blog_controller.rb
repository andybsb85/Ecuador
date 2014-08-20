class ListBlogController < ApplicationController

  
  def index
     if params[:set_locale]
       redirect_to list_blog_index_path(locale: params[:set_locale])    
    else
        @blogs = Blog.all
     end
  end
end
