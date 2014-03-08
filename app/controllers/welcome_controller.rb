class WelcomeController < ApplicationController
  def index
    posts = Post.all
    word_ary = []
    posts.each do |post|
      post.body.split.each do |word|
        if word_array.include?
          word_has
      end
    end
  end

  def about
  end
end
