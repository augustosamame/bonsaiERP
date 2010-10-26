# encoding: utf-8
# author: Boris Barroso
# email: boriscyber@gmail.com
class Transaction < ActiveRecord::Base
  acts_as_org

  belongs_to :contact
  belongs_to :currency

  has_many :transaction_details

  # scopes
  default_scope where(:organisation_id => OrganisationSession.organisation_id )
end
