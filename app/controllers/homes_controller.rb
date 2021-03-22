class HomesController < ApplicationController
  before_action :prepare_data
  def show
  end

  private

  def prepare_data
    @items = if params[:term]
      search_items(Book, params[:term]) +
        search_items(Magazine, params[:term])
    else
      all_items
    end
    sort_data
  end

  def all_items
    Book.all + Magazine.all
  end

  def search_items(klass, term)
    klass.where(isbn: term).or(klass.where("authors like ?", "%#{term}%"))
  end

  def sort_data
    @items = @items.sort_by(&:title)
  end
end
