# frozem_string_literal: true
class ContactsController < ApplicationController
  def index
    contacts = Contact.recent.page(params[:page]).per(params[:per_page])
    render json: contacts
  end
end
