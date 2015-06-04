module Api
  module V1
    class MenusController < ApplicationController
      def index
        render json: [
        { id: 1, name: "Alcholic Drinks",
          items: [
            {
              id: 1,
               name: "Bloody Mary",
               description: "A tomato drink.",
               image: "http://placehold.it/250x250",
               price: 2.00,
               parent_id: 1
            },
            {
              id: 2,
               name: "Scotch",
               description: "The water of life to the Scots and almost everyone else.",
               image: "http://placehold.it/250x250",
               price: 7.25,
               parent_id: 1
            },
            {
              id: 3,
               name: "Old Fashion",
               description: "One of the oldest cocktails around, your granddad probably drank it.",
               image: "http://placehold.it/250x250",
               price: 4.50,
               parent_id: 1
            }
          ]
        },
        { id: 2, name: "Bar Snacks",
          items: [
            {
              id: 4,
               name: "Beer Nuts",
               description: "Nuts for the beer tree. I don't know",
               image: "http://placehold.it/250x250",
               price: 1.75,
               parent_id: 2
            },
            {
              id: 5,
               name: "Popcorn",
               description: "Because we all have an inner child",
               image: "http://placehold.it/250x250",
               price: 0.75,
               parent_id: 2
            },
            {
              id: 6,
               name: "Steak Dinner",
               description: "Who doesn't like a nice NY Strip Steak",
               image: "http://placehold.it/250x250",
               price: 18.99,
               parent_id: 2
            }
          ]
        },
        { id: 3, name: "Merchandise",
          items: [
            {
              id: 7,
               name: "T-Shirt",
               description: "You can remember you were here, even if you don't",
               image: "http://placehold.it/250x250",
               price: 25.00,
               parent_id: 3
            },
            {
              id: 8,
               name: "CDs",
               description: "Those things before mp3s came out",
               image: "http://placehold.it/250x250",
               price: 5.00,
               parent_id: 3
            }
          ]
        }
      ]
      end
    end
  end
end
