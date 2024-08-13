$.get("https://swapi-api.alx-tools.com/api/people/5/?format=json",
        function(data, textStatus){
		const movies = data.results;
		movies.forEach(function(movie){
			$('UL#list_movies')append('<li>' + movie.title + '<li>');
			});
	)};
