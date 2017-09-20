class Api::BooksController < ApplicationController
  def index
    render status: 200, json: {
      books: Book.all
    }.to_json
  end

  def show
    book = Book.find(params[:id])

    render status: 200, json: {
    book: book
  }.to json
  end
  def create
    book = Book.new(book_params)

    if book.save
      render status: 201, json: |{
        message: "Book succesfully created",
        book: book
      }.to_json
    else
      render status: 422, json: {
        errors: book.errors
      }.to_json
    end

    def destroy
      book = Book.find(params[:id])
      book.destroy

      render status: 200, json: {
        message: "Book successfully deleted"
      }.to_json
    end

    def update
      book = Book.find(params[:id])
      if book.update(book_params)
        render status: 200, json: {
          message: "Book successfully updated"
          book: book
        }.to_json
      else
        render status: 422, json: {
          message: "Book could not be updated"
          errors: book.errors
        }.to_json
      end
    end

    private

    def book_params
      params.require(:book).permit(:book_title)
    end
end
