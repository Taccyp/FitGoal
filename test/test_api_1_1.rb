require_relative '../lib/nutritionix/api_1_1'

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

app_id = ENV['nutritionix_app_id']
app_key = ENV['nutritionix_app_key']
provider = Nutritionix::Api_1_1.new(app_id, app_key)
search_params = nxql_search_params
search_params.merge!(query: 'fish') #add your query here
results_json = provider.nxql_search(search_params)
puts "Results: #{results_json}"
