class TagsController < ApplicationController

def create
  @tags = params[:tags].split(',').map!{|tag| Tag.find_or_create_by_name(tag.downcase.squeeze(" ").strip) }
end

end