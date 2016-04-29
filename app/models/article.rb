class Article < ActiveRecord::Base


  include Bootsy::Container
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  def should_generate_new_friendly_id? #will change the slug if the name changed
    title_changed?
  end

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  has_many :comments, dependent: :destroy

  include PgSearch
  pg_search_scope :search, against: [:title, :body],
     using: {tsearch: {prefix: true, dictionary: "english"}}

  def self.text_search(query)
    if query.present?
      search(query)
      #where("title @@ :q or body @@ :q", q: query)
    else
      all
    end
  end
end
