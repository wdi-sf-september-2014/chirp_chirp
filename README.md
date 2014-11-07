#Chirp! The Next Big Thang

Chirp! is the newest social network that brings together all of the coolest aspects of socializing. Your mission should you choose to accept it is as follows:
- Use the files in the `chirp_html` folder as your frontend.
- Create a brand new Rails project that will take the input from the chirp textarea and save it as a chirp in the database.
- Create edit and delete functionality for the chirps.
- Each chirp shown should display a randomly chosen bird.
- Pagination should be handled through a pagination gem called [will_paginate](https://github.com/mislav/will_paginate).
- All static assets (JS files, CSS files, images, etc) should be handled through the asset pipeline. Remember, files that are placed into the `assets` folder will be automatically included.
- More information on the asset pipeline can be found [here](http://guides.rubyonrails.org/asset_pipeline.html).
- Must have feature, controller, and model specs for all functionality. Refer to Friday's lesson and relevant docs:
	- [feature specs](https://www.relishapp.com/rspec/rspec-rails/docs/feature-specs/feature-spec)
	- [controller specs](https://www.relishapp.com/rspec/rspec-rails/v/3-1/docs/controller-specs)
	- [model specs](https://www.relishapp.com/rspec/rspec-rails/v/3-1/docs/model-specs)
		- for model specs, use [shoulda matchers](https://github.com/thoughtbot/shoulda-matchers).
- Bonus 1: When you visit the edit page, the bird from the original post should be the same one that is shown.
- Bonus 2: On creation of a chirp, generate and store with the chirp a random bird (and then display that in the views for chirps)