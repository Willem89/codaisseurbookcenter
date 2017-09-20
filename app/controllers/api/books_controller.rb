class Api::BooksController < ApplicationController
  def index
    render status: 200, json: {
      books: Book.all
    }.to_json
  end
end
