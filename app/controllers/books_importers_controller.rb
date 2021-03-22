require 'csv'

class BooksImportersController < ApplicationController
  def create
    Book.import(params[:file])
    redirect_to root_path, flash: { notice: 'Data imported' }
  end
end
