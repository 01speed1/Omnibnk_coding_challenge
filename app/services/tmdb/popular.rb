module TMDB
  class Popular < Base

    #attr_accessor :aggregate_likes,
    #              :dairy_free,
    #              :gluten_free,
    #              :id,
    #              :image,
    #              :ingredients,
    #              :instructions,
    #              :ready_in_minutes,
    #              :title,
    #              :vegan,
    #              :vegetarian


    API_KEY = "dccfb35f165439731d84606110a670db"


    def self.latest(query = {})
    #response = 
      response = Request.where('popular', query.merge({ api_key: API_KEY }))
      results = response.fetch('results', [])
      [ results, response[:errors] ]
    end

    #def self.find(id)
    #  response = Request.get("recipes/#{id}/information")
    #  Recipe.new(response)
    #end

    #def initialize(args = {})
    #  super(args)
    #  self.ingredients = parse_ingredients(args)
    #  self.instructions = parse_instructions(args)
    #end

    #def parse_ingredients(args = {})
    #  args.fetch("extendedIngredients", []).map { |ingredient| Ingredient.new(ingredient) }
    #end

    #def parse_instructions(args = {})
    #  instructions = args["analyzedInstructions"]
    #  if instructions
    #    steps = instructions.first.fetch("steps", [])
    #    steps.map { |instruction| Instruction.new(instruction) }
    #  end
    #end
  end
end