#update this to map to your lib directory, if necessary
require_relative 'lib/nutritionix/api_1_1'

class FitGoal

  def initialize
    @provider = Nutritionix::Api_1_1.new(ENV['NUTRITIONIX_APP_ID'], ENV['NUTRITIONIX_APP_KEY'])
  end

  def query terms
    @provider.nxql_search(nxql_search_params.merge(query: terms))
  end
  

  private
  #assist with search params
  def nxql_search_params
    fields = %w(brand_id brand_name item_id item_name nf_serving_size_qty nf_serving_size_unit)
    fields << %w(nf_calories nf_total_carbohydrate nf_sodium nf_dietary_fiber nf_protein)
    default_fields = fields.flatten

    {
      offset: 0,
      limit: 50,
      fields: default_fields,

      filters:{
        item_type:2     #filter by boxed goods?
      }

    }
  end


end