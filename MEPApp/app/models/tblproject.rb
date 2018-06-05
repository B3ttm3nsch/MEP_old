class Tblproject < ActiveRecord::Base

  belongs_to :client, :class_name => "Tblclient", :foreign_key => "ClientID"
  belongs_to :category, :class_name => "BsagProductCategory"
  belongs_to :product, :class_name => "BsagProduct", :foreign_key => "product_id"
  belongs_to :product_variation, :class_name => "BsagProductVariation", :foreign_key => "product_variation_id"
  has_many :project_partials, :class_name => "BsagProjectPartial", :foreign_key => "project_id"

  def to_dict
    d = {}
    d[:id] = self.ID
    d[:ProjectID] = self.ProjectID
    d[:title] = "#{self.Name}"
    d[:aka_title] = "#{self.aka_title}"
    d[:category_id] = self.category_id
    d[:category] = self.category.name
    d[:subtitle] = self.subtitle
    d[:client] = self.client.to_dict
    d[:product_string] = self.product_string
    d[:end_date] = self.EndDate if !self.EndDate.nil?
    d[:start_date] = self.StartDate if !self.StartDate.nil?
    d[:description] = self.Description
    d[:versions] = self.versions.map{|v| v.to_dict}
    #d[:partials] = self.partials.order("number").map{|k| k.to_dict}
    d
  end

  def product_string
    s = []
    s << self.product.name if !self.product.nil?
    s << self.product_variation.name if !self.product_variation.nil?
    s.join(" | ")
  end

  def to_dict_xs
    { :name => self.Name.strip, :id => self.ID, :aka_title => self.aka_title }
  end

  def subtitle
    s = [self.product_string]
    s << self.category.name if self.category

    if self.partials.length > 0
      if self.category.name == "Film"
        s << "#{self.partials.length} Akte"
      elsif self.category.name == "Serie"
        s << "#{self.partials.length} Episoden"
      end
    end
    s.join(" | ")
  end
end