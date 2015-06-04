module Api
  module V1
    class ProfilesController < ApplicationController
      def index
        render json: [
          [{
            id: 1,
            image: "http://placehold.it/350x350",
            f_name: "Abraham",
            l_name: "Oshel",
            hasProfile: true },
          {
            id: 2,
            image: "http://placehold.it/350x350",
            f_name: "Dan",
            l_name: "Martin",
            hasProfile: false },
          {
            id: 3,
            image: "http://placehold.it/350x350",
            f_name: "Dave",
            l_name: "Young"}],
          [{
            id: 4,
            image: "http://placehold.it/350x350",
            f_name: "Dewight",
            l_name: "Long"},
          {
            id: 5,
            image: "http://placehold.it/350x350",
            f_name: "Tom",
            l_name: "Short"},
          {
            id: 6,
            image: "http://placehold.it/350x350",
            f_name: "Bob",
            l_name: "Thorton"}],
          [{
            id: 7,
            image: "http://placehold.it/350x350",
            f_name: "Tiff",
            l_name: "Wright"},
            {},{}]
        ]
      end
    end
  end
end
