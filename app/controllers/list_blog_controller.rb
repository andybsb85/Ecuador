class ListBlogController < ApplicationController
   add_breadcrumb "Ecuador Tourism", :index_path
   add_breadcrumb "Blog", :list_blog_index_path
  
  
  def index
     if params[:set_locale]
       redirect_to list_blog_index_path(locale: params[:set_locale])    
    else
        @blogs = Blog.all
     end
  end
end
