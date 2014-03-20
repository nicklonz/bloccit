class WelcomeController < ApplicationController
  def index
    posts = Post.all
    word_hash = {}
    
    posts.each do |post|
      post.body.split.each do |word|
        if word_hash[word].nil?
          word_hash[word] = 1
        else
          word_hash[word] += 1
        end
      end
    end

    json_words = []

    word_hash.each do |key, value|
      json_words << {text: key, weight: value}
    end
    @json_words = json_words.to_json
  end

  def about
  end
end
